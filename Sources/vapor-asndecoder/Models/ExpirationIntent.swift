/// Reasons why an App Store subscription expired.
/// Corresponds to the `expirationIntent` field in App Store Server Notifications.
public enum ExpirationIntent: Int32, Codable, Sendable {
    /// The customer voluntarily cancelled the subscription.
    case customerCancelled = 1
    /// The subscription failed to renew due to a billing error.
    case billingError = 2
    /// The customer did not consent to a price increase.
    case customerDidNotConsentToPriceIncrease = 3
    /// The product was no longer available for purchase.
    case productNotAvailable = 4
    /// The subscription expired for another reason.
    case other = 5
    
    /// Returns a human‑readable description of the expiration intent.
    /// - Returns: A descriptive string for each expiration reason.
    public func description() -> String {
        switch self {
        case .customerCancelled: return "Customer cancelled"
        case .billingError: return "Billing error"
        case .customerDidNotConsentToPriceIncrease: return "Customer did not consent to price increase"
        case .productNotAvailable: return "Product not available"
        case .other: return "Other"
        }
    }
}
