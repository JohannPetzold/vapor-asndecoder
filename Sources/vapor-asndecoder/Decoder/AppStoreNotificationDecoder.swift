import Vapor
import JWTKit

/// `AppStoreNotificationDecoder` handles verification and decoding of App Store Server Notification payloads.
/// It uses Apple's root certificate to verify JWS signatures and returns strongly‑typed payload models.
public struct AppStoreNotificationDecoder: Sendable {
    
    /// The JWT verifier configured with Apple's root certificate for verifying signed JWS payloads.
    private let verifier: X5CVerifier
    
    /// Initializes a new decoder with the provided Apple Root CA certificate in PEM format.
    /// - Parameter appleRootCertPEM: The Apple Root CA certificate (PEM string) used to verify incoming JWS signatures.
    /// - Throws: An error if the verifier cannot be created with the given certificate.
    public init(appleRootCertPEM: String) throws {
        verifier = try X5CVerifier(rootCertificates: [appleRootCertPEM])
    }
    
    /// Verifies and decodes a signed App Store Server Notification payload.
    ///
    /// This method:
    /// 1. Decodes the outer JWS envelope into a `SignedPayload`.
    /// 2. Verifies the JWS signature against the Apple root certificate.
    /// 3. Decodes the verified payload into a `NotificationPayload`.
    /// 4. Optionally verifies and decodes nested renewal and transaction info.
    ///
    /// - Parameter signedPayloadData: The raw HTTP body buffer containing the signed JWS payload.
    /// - Returns: A tuple containing the main notification payload, optional renewal info payload, and optional transaction payload.
    /// - Throws: An error if decoding or signature verification fails.
    public func decode(
        _ signedPayloadData: ByteBuffer
    ) async throws -> (
        notification: NotificationPayload,
        renewal: RenewalInfoPayload?,
        transaction: TransactionPayload?
    ) {
        let signed = try JSONDecoder().decode(SignedPayload.self, from: signedPayloadData)
        let payload = try await verifier.verifyJWS(signed.signedPayload, as: NotificationPayload.self)
        
        var renewal: RenewalInfoPayload?
        var transaction: TransactionPayload?
        
        // If the notification includes nested renewal info, verify and decode it.
        if let signedRenewalInfo = payload.data?.signedRenewalInfo {
            renewal = try await verifier.verifyJWS(signedRenewalInfo, as: RenewalInfoPayload.self)
        }
        // If the notification includes nested transaction info, verify and decode it.
        if let signedTransactionInfo = payload.data?.signedTransactionInfo {
            transaction = try await verifier.verifyJWS(signedTransactionInfo, as: TransactionPayload.self)
        }
        
        return (payload, renewal, transaction)
    }
}
