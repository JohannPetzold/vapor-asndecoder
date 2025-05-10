/// The reason for a transaction event in App Store Server Notifications.
/// - purchase: A new purchase transaction.
/// - renewal: A subscription renewal transaction.
public enum TransactionReason: String, Codable, Sendable {
    /// Indicates the transaction was an initial purchase.
    case purchase = "PURCHASE"
    /// Indicates the transaction was a subscription renewal.
    case renewal = "RENEWAL"
}
