/// The customer's response status for an App Store subscription price increase.
/// - customerHasNotResponded: The customer has not yet responded to the price increase.
/// - customerConsentedOrWasNotifiedWithoutNeedingConsent: The customer either consented or did not require consent.
public enum PriceIncreaseStatus: Int32, Codable, Sendable {
    /// The customer has not responded to the price increase notification.
    case customerHasNotResponded = 0
    /// The customer either consented to the price increase or notification did not require consent.
    case customerConsentedOrWasNotifiedWithoutNeedingConsent = 1
}
