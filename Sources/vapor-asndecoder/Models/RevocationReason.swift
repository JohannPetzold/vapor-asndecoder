/// The reason an App Store purchase or subscription was revoked/refunded.
/// - refundedDueToIssue: The purchase was refunded due to a specific issue.
/// - refundedForOtherReason: The purchase was refunded for another or unspecified reason.
public enum RevocationReason: Int32, Codable, Sendable {
    /// The purchase was refunded due to a reported issue.
    case refundedDueToIssue = 1
    /// The purchase was refunded for other or unspecified reasons.
    case refundedForOtherReason = 0
    
    /// Returns a human-readable description of the revocation reason.
    /// - Returns: A descriptive string for each revocation case.
    public func description() -> String {
        switch self {
        case .refundedDueToIssue: return "Refunded due to issue"
        case .refundedForOtherReason: return "Refunded for other reason"
        }
    }
}
