/// The type of promotional offer applied to an in‑app purchase or subscription.
/// - freeTrial: A trial period at no cost.
/// - payAsYouGo: A recurring pay-as-you-go offer.
/// - payUpFront: A one-time prepaid offer.
public enum OfferDiscountType: String, Codable, Sendable {
    /// A trial period offered for free with no charge.
    case freeTrial = "FREE_TRIAL"
    /// An offer where the user is charged periodically (pay-as-you-go).
    case payAsYouGo = "PAY_AS_YOU_GO"
    /// An offer where the user pays the full amount upfront.
    case payUpFront = "PAY_UP_FRONT"
}
