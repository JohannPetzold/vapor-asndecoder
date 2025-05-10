/// The type of App Store Server Notification.
/// Represents the various notification events sent by the App Store.
public enum NotificationType: String, Codable, Sendable {
    /// The user requested consumption of an in‑app purchase.
    case consumptionRequest = "CONSUMPTION_REQUEST"
    /// The user changed their subscription renewal preferences.
    case didChangeRenewalPref = "DID_CHANGE_RENEWAL_PREF"
    /// The subscription renewal status has changed (e.g., turned on/off).
    case didChangeRenewalStatus = "DID_CHANGE_RENEWAL_STATUS"
    /// The subscription failed to renew due to a billing error.
    case didfailToRenew = "DID_FAIL_TO_RENEW"
    /// The subscription successfully renewed.
    case didRenew = "DID_RENEW"
    /// The subscription has expired.
    case expired = "EXPIRED"
    /// The subscription's grace period after billing failure has expired.
    case gradePeriodExpired = "GRACE_PERIOD_EXPIRED"
    /// A promotional offer was redeemed.
    case offeredRedeemed = "OFFER_REDEEMED"
    /// The user was notified of a price increase.
    case priceIncrease = "PRICE_INCREASE"
    /// A refund was issued for a purchase.
    case refund = "REFUND"
    /// The refund request was declined.
    case refundDeclined = "REFUND_DECLINED"
    /// The subscription renewal date was extended.
    case renewalExtended = "RENEWAL_EXTENDED"
    /// The subscription was revoked by the App Store.
    case revoke = "REVOKE"
    /// A new subscription was purchased.
    case subscribed = "SUBSCRIBED"
    /// A test notification for validating the webhook setup.
    case test = "TEST"
}
