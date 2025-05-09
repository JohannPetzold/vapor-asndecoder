public enum RevocationReason: Int32, Codable, Sendable {
    case refundedDueToIssue = 1
    case refundedForOtherReason = 0
    
    public func description() -> String {
        switch self {
        case .refundedDueToIssue: return "Refunded due to issue"
        case .refundedForOtherReason: return "Refunded for other reason"
        }
    }
}
