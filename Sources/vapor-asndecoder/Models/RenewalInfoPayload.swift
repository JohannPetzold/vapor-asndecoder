import Foundation
import JWT

public struct RenewalInfoPayload: JWTPayload {
    public let autoRenewProductId: String?
    public let autoRenewStatus: AutoRenewStatus?
    public let currency: String?
    public let eligibleWinBackOfferIds: [String]?
    public let environment: NotificationEnvironment?
    public let expirationIntent: ExpirationIntent?
    public let gracePeriodExpiresDate: Date?
    public let isInBillingRetryPeriod: Bool?
    public let offerDiscountType: OfferDiscountType?
    public let offerIdentifier: String?
    public let offerType: OfferType?
    public let originalTransactionId: String?
    public let priceIncreaseStatus: PriceIncreaseStatus?
    public let productId: String?
    public let recentSubscriptionStartDate: Date?
    public let renewalDate: Date?
    public let renewalPrice: Int64?
    public let signedDate: Date?
    
    public func verify(using algorithm: some JWTAlgorithm) async throws {
    }
}
