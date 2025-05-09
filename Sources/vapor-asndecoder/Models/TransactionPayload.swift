import Foundation
import JWT

public struct TransactionPayload: JWTPayload {
    public let appAccountToken: UUID?
    public let bundleId: String?
    public let currency: String?
    public let environment: NotificationEnvironment?
    public let expiresDate: Date?
    public let inAppOwnershipType: InAppOwnershipType?
    public let isUpgraded: Bool?
    public let offerDiscountType: OfferDiscountType?
    public let offerIdentifier: String?
    public let offerType: OfferType?
    public let originalPurchaseDate: Date?
    public let originalTransactionId: String?
    public let price: Int64?
    public let productId: String?
    public let purchaseDate: Date?
    public let quantity: Int32?
    public let revocationDate: Date?
    public let revocationReason: RevocationReason?
    public let signedDate: Date?
    public let storefront: String?
    public let storefrontId: String?
    public let subscriptionGroupIdentifier: String?
    public let transactionId: String?
    public let transactionReason: TransactionReason?
    public let type: ProductType?
    public let webOrderLineItemId: String?
    
    public func verify(using algorithm: some JWTAlgorithm) async throws {
        
    }
}
