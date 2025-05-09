import JWT

public struct NotificationPayload: JWTPayload {
    public let notificationType: NotificationType?
    public let notificatonSubtype: NotificationSubtype?
    public let notificationUUID: String?
    public let data: NotificationData?
    public let version: String?
    public let signedDate: Int?

    public func verify(using algorithm: some JWTAlgorithm) async throws {
        
    }
}
