public enum ExpirationIntent: Int32, Codable, Sendable {
    case customerCancelled = 1
    case billingError = 2
    case customerDidNotConsentToPriceIncrease = 3
    case productNotAvailable = 4
    case other = 5
    
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
