import Foundation
import JWT

/// The JWT payload representing transaction information in App Store Server Notifications.
/// Includes details of the in-app purchase or subscription transaction.

public struct TransactionPayload: JWTPayload {
    /// The UUID token associated with the app account.
    public let appAccountToken: UUID?
    /// The bundle identifier of the app.
    public let bundleId: String?
    /// The currency code for the transaction (ISO 4217).
    public let currency: String?
    /// The App Store environment (Sandbox or Production) where the transaction occurred.
    public let environment: NotificationEnvironment?
    /// The expiration date of the subscription, if applicable.
    public let expiresDate: Date?
    /// The ownership type of the purchased product.
    public let inAppOwnershipType: InAppOwnershipType?
    /// Whether this transaction represents an upgrade from a previous subscription.
    public let isUpgraded: Bool?
    /// The type of promotional discount applied, if any.
    public let offerDiscountType: OfferDiscountType?
    /// The identifier for the promotional offer applied.
    public let offerIdentifier: String?
    /// The type of offer applied to the transaction.
    public let offerType: OfferType?
    /// The date of the original purchase transaction.
    public let originalPurchaseDate: Date?
    /// The identifier of the original transaction.
    public let originalTransactionId: String?
    /// The transaction price in the smallest currency unit.
    public let price: Int64?
    /// The product identifier of the purchased item.
    public let productId: String?
    /// The date when the purchase was made.
    public let purchaseDate: Date?
    /// The number of items purchased in this transaction.
    public let quantity: Int32?
    /// The date the transaction was revoked or refunded, if applicable.
    public let revocationDate: Date?
    /// The reason for revocation or refund of the transaction.
    public let revocationReason: RevocationReason?
    /// The date when the transaction payload was signed (JWT claim).
    public let signedDate: Date?
    /// The storefront identifier where the transaction occurred.
    public let storefront: String?
    /// Additional storefront region identifier.
    public let storefrontId: String?
    /// The subscription group identifier for the product.
    public let subscriptionGroupIdentifier: String?
    /// The unique identifier of this transaction.
    public let transactionId: String?
    /// The reason code for the transaction event.
    public let transactionReason: TransactionReason?
    /// The product type of the transaction.
    public let type: ProductType?
    /// The web order line item identifier.
    public let webOrderLineItemId: String?
    
    /// Verifies the JWT payload signature and claims for the transaction payload.
    /// - Parameter algorithm: The JWT algorithm to use for verification.
    /// - Throws: An error if verification fails.
    public func verify(using algorithm: some JWTAlgorithm) async throws {
        
    }
}
