public enum PriceIncreaseStatus: Int32, Codable, Sendable {
    case customerHasNotResponded = 0
    case customerConsentedOrWasNotifiedWithoutNeedingConsent = 1
}
