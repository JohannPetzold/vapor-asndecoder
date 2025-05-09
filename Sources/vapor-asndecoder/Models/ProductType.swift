public enum ProductType: String, Codable, Sendable {
    case autoRenewableSubscription = "Auto-Renewable Subscription"
    case nonConsumable = "Non-Consumable"
    case consumable = "Consumable"
    case nonRenewingSubscription = "Non-Renewing Subscription"
}
