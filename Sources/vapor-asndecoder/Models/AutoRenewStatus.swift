public enum AutoRenewStatus: Int32, Codable, Sendable {
    case off = 0
    case on = 1
    
    public func description() -> String {
        switch self {
        case .off: return "Disabled"
        case .on: return "Enabled"
        }
    }
}
