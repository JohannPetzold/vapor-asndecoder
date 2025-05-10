/// The type of offer applied to an in‑app purchase or subscription.
/// - introductoryOffer: A special introductory price for new subscribers.
/// - promotionalOffer: A time‑limited promotional price.
/// - subscriptionOfferCode: A custom offer redeemed via code.
/// - winBackOffer: An offer to re‑engage lapsed subscribers.
public enum OfferType: Int32, Codable, Sendable {
    /// A special introductory price for new subscribers.
    case introductoryOffer = 1
    /// A time‑limited promotional price for existing or new users.
    case promotionalOffer = 2
    /// An offer redeemed by a subscription offer code.
    case subscriptionOfferCode = 3
    /// An offer designed to win back lapsed subscribers.
    case winBackOffer = 4
    
    /// Returns a human‑readable description of the offer type.
    /// - Returns: A string representing the offer.
    public func description() -> String {
        switch self {
        case .introductoryOffer: return "Introductory Offer"
        case .promotionalOffer: return "Promotional Offer"
        case .subscriptionOfferCode: return "Subscription Offer Code"
        case .winBackOffer: return "Win Back Offer"
        }
    }
}
