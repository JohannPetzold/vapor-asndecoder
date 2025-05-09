public enum OfferType: Int32, Codable, Sendable {
    case introductoryOffer = 1
    case promotionalOffer = 2
    case subscriptionOfferCode = 3
    case winBackOffer = 4
    
    public func description() -> String {
        switch self {
        case .introductoryOffer: return "Introductory Offer"
        case .promotionalOffer: return "Promotional Offer"
        case .subscriptionOfferCode: return "Subscription Offer Code"
        case .winBackOffer: return "Win Back Offer"
        }
    }
}
