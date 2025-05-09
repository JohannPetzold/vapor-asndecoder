import Vapor
import JWTKit

public struct AppStoreNotificationDecoder {
    
  private let verifier: X5CVerifier

  public init(appleRootCertPEM: String) throws {
    verifier = try X5CVerifier(rootCertificates: [appleRootCertPEM])
  }

  public func decode(
    signedPayloadData: ByteBuffer
  ) async throws -> (
    notification: NotificationPayload,
    renewal: RenewalInfoPayload?,
    transaction: TransactionPayload?
  ) {
      let signed = try JSONDecoder().decode(SignedPayload.self, from: signedPayloadData)
      let payload = try await verifier.verifyJWS(signed.signedPayload, as: NotificationPayload.self)
      
      var renewal: RenewalInfoPayload?
      var transaction: TransactionPayload?
      
      if let signedRenewalInfo = payload.data?.signedRenewalInfo {
          renewal = try await verifier.verifyJWS(signedRenewalInfo, as: RenewalInfoPayload.self)
      }
      if let signedTransactionInfo = payload.data?.signedTransactionInfo {
          transaction = try await verifier.verifyJWS(signedTransactionInfo, as: TransactionPayload.self)
      }
      
      return (payload, renewal, transaction)
  }
}
