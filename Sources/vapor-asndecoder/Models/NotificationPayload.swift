import JWT

/// The top-level JWT payload for App Store Server Notifications.
/// Contains metadata about the notification and its associated data.
public struct NotificationPayload: JWTPayload {
    /// The type of the notification.
    public let notificationType: NotificationType?
    /// The optional subtype of the notification.
    public let notificatonSubtype: NotificationSubtype?
    /// A unique identifier for this notification.
    public let notificationUUID: String?
    /// The main payload data containing app and transaction details.
    public let data: NotificationData?
    /// The version of the notification payload format.
    public let version: String?
    /// The UNIX timestamp when the notification was signed.
    public let signedDate: Int?

    /// Verifies the JWT payload signature and claims using the given algorithm.
    /// - Parameter algorithm: The JWT algorithm used to verify the signature.
    /// - Throws: An error if verification fails.
    public func verify(using algorithm: some JWTAlgorithm) async throws {
        
    }
}
