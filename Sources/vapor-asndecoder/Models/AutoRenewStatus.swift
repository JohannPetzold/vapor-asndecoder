/// Represents the auto‑renewal status of an App Store subscription.
/// - off: The subscription will not renew automatically.
/// - on: The subscription will renew automatically.
public enum AutoRenewStatus: Int32, Codable, Sendable {
    /// Auto‑renewal is disabled.
    case off = 0
    /// Auto‑renewal is enabled.
    case on = 1
    
    /// Returns a human‑readable string for the auto‑renewal status.
    /// - Returns: `"Disabled"` for `.off`, `"Enabled"` for `.on`.
    public func description() -> String {
        switch self {
        case .off: return "Disabled"
        case .on: return "Enabled"
        }
    }
}
