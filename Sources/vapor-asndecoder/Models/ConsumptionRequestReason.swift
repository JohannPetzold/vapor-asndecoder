public enum ConsumptionRequestReason: String, Codable, Sendable {
    case unintendedPurchase = "UNINTENDED_PURCHASE"
    case fulfillmentIssue = "FULFILLMENT_ISSUE"
    case unsatisfiedWithPurchase = "UNSATISFIED_WITH_PURCHASE"
    case legal = "LEGAL"
    case other = "OTHER"
}
