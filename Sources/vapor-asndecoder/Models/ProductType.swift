/// The type of product in the App Store.
/// - autoRenewableSubscription: A subscription that renews automatically.
/// - nonConsumable: A one-time purchase that does not expire.
/// - consumable: A purchase that can be used up and repurchased.
/// - nonRenewingSubscription: A subscription that does not renew automatically.
public enum ProductType: String, Codable, Sendable {
    /// A subscription that renews automatically until cancelled.
    case autoRenewableSubscription = "Auto-Renewable Subscription"
    /// A one-time purchase that remains available permanently.
    case nonConsumable = "Non-Consumable"
    /// A purchase that is depleted with use and can be bought again.
    case consumable = "Consumable"
    /// A subscription with a fixed duration that must be manually renewed.
    case nonRenewingSubscription = "Non-Renewing Subscription"
}
