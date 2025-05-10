/// The ownership type of an in‑app purchase.
/// - familyShared: The purchase is shared via Family Sharing.
/// - purchased: The purchase was directly purchased by the user.
public enum InAppOwnershipType: String, Codable, Sendable {
    /// The user accesses the purchase through Family Sharing.
    case familyShared = "FAMILY_SHARED"
    /// The user directly purchased the item.
    case purchased = "PURCHASED"
}
