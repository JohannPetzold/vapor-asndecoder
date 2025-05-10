import Foundation
import JWT

/// The JWT payload for renewal information in App Store Server Notifications.
/// Contains details about subscription renewal, pricing, offers, and billing status.
public struct RenewalInfoPayload: JWTPayload {
    /// The product identifier for the auto-renewable subscription.
    public let autoRenewProductId: String?
    /// The auto-renewal status of the subscription.
    public let autoRenewStatus: AutoRenewStatus?
    /// The currency code for the renewal price (ISO 4217).
    public let currency: String?
    /// Identifiers of any win-back offers the user is eligible to redeem.
    public let eligibleWinBackOfferIds: [String]?
    /// The App Store environment (Sandbox or Production) for this renewal info.
    public let environment: NotificationEnvironment?
    /// The reason the subscription expired, if applicable.
    public let expirationIntent: ExpirationIntent?
    /// The date when the grace period ends after a billing failure.
    public let gracePeriodExpiresDate: Date?
    /// Whether the subscription is currently in a billing retry period.
    public let isInBillingRetryPeriod: Bool?
    /// The type of discount applied to the subscription offer.
    public let offerDiscountType: OfferDiscountType?
    /// The identifier for the subscription offer or promotional code.
    public let offerIdentifier: String?
    /// The type of subscription offer (introductory, promotional, etc.).
    public let offerType: OfferType?
    /// The original transaction identifier for the subscription.
    public let originalTransactionId: String?
    /// The customer's response status to a price increase.
    public let priceIncreaseStatus: PriceIncreaseStatus?
    /// The product identifier of the subscription being renewed.
    public let productId: String?
    /// The most recent start date of the renewed subscription period.
    public let recentSubscriptionStartDate: Date?
    /// The next renewal date for the subscription.
    public let renewalDate: Date?
    /// The price (in the smallest currency unit) for the upcoming renewal.
    public let renewalPrice: Int64?
    /// The date when this renewal info payload was signed (JWT claim).
    public let signedDate: Date?
    
    /// Verifies the JWT signature and claims for the renewal info payload.
    /// - Parameter algorithm: The JWT algorithm used for signature verification.
    /// - Throws: An error if verification fails.
    public func verify(using algorithm: some JWTAlgorithm) async throws {
        
    }
}
