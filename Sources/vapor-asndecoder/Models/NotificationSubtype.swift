/// The detailed subtype of an App Store Server Notification.
/// Provides more specific context for the notificationType (e.g., upgrade, downgrade).
public enum NotificationSubtype: String, Codable, Sendable {
    /// A new subscription purchase.
    case initialBuy = "INITIAL_BUY"
    /// The user resubscribed to a lapsed subscription.
    case resubscribe = "RESUBSCRIBE"
    /// The subscription was downgraded to a lower tier.
    case downgrade = "DOWNGRADE"
    /// The subscription was upgraded to a higher tier.
    case upgrade = "UPGRADE"
    /// Automatic renewal was enabled for the subscription.
    case autoRenewEnabled = "AUTO_RENEW_ENABLED"
    /// Automatic renewal was disabled for the subscription.
    case autoRenewDisabled = "AUTO_RENEW_DISABLED"
    /// The user voluntarily cancelled or changed the subscription.
    case voluntary = "VOLUNTARY"
    /// The subscription is in billing retry after a failed renewal.
    case billingRetry = "BILLING_RETRY"
    /// The subscription price increased and user notified.
    case priceIncrease = "PRICE_INCREASE"
    /// The subscription is in a grace period after payment failure.
    case gracePeriod = "GRACE_PERIOD"
    /// Billing recovery succeeded after retry.
    case billingRecovery = "BILLING_RECOVERY"
    /// The subscription renewal is pending.
    case pending = "PENDING"
    /// The user accepted an offer or price change.
    case accepted = "ACCEPTED"
}
