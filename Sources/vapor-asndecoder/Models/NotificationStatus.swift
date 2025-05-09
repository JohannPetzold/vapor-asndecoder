public enum NotificationStatus: Int32, Codable, Sendable {
    case active = 1
    case expired = 2
    case billingRetry = 3
    case billingGracePeriod = 4
    case revoked = 5
    
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
