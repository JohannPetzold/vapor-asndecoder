/// The reason provided by the user or the system for requesting consumption of an in‑app purchase.
/// Maps to the `consumptionRequestReason` field in App Store Server Notifications.
public enum ConsumptionRequestReason: String, Codable, Sendable {
    /// The purchase was made unintentionally by the user.
    case unintendedPurchase = "UNINTENDED_PURCHASE"
    /// The user experienced an issue with fulfillment of the purchase.
    case fulfillmentIssue = "FULFILLMENT_ISSUE"
    /// The user is unsatisfied with the purchased content or service.
    case unsatisfiedWithPurchase = "UNSATISFIED_WITH_PURCHASE"
    /// The consumption request is due to a legal reason.
    case legal = "LEGAL"
    /// The consumption request reason does not fit any predefined category.
    case other = "OTHER"
}
