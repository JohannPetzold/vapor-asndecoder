/// The status of an App Store subscription notification.
/// - active: The subscription is active.
/// - expired: The subscription has expired.
/// - billingRetry: The subscription is in billing retry state.
/// - billingGracePeriod: The subscription is in a grace period after billing failure.
/// - revoked: The subscription has been revoked.
public enum NotificationStatus: Int32, Codable, Sendable {
    /// The subscription is currently active.
    case active = 1
    /// The subscription has expired.
    case expired = 2
    /// The subscription is retrying billing after a failure.
    case billingRetry = 3
    /// The subscription is in the billing grace period.
    case billingGracePeriod = 4
    /// The subscription has been revoked by the App Store.
    case revoked = 5
    
    /// Returns a human-readable description of the notification status.
    /// - Returns: A string representing the status.
    public func description() -> String {
        switch self {
        case .active: return "Active"
        case .expired: return "Expired"
        case .billingRetry: return "Billing Retry"
        case .billingGracePeriod: return "Billing Grace Period"
        case .revoked: return "Revoked"
        }
    }
}
