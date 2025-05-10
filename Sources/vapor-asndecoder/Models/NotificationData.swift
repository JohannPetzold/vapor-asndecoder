/// The payload data container of an App Store Server Notification.
/// Holds details about the app, environment, and any nested signed info.
public struct NotificationData: Codable, Sendable {
    /// The App’s Apple ID.
    public let appAppleId: Int64?
    /// The bundle identifier of the app.
    public let bundleId: String?
    /// The version of the app bundle.
    public let bundleVersion: String?
    /// The reason for a consumption request, if applicable.
    public let consumptionRequestReason: ConsumptionRequestReason?
    /// The App Store environment (Sandbox or Production).
    public let environment: NotificationEnvironment?
    /// The nested JWS string for renewal info, if present.
    public let signedRenewalInfo: String?
    /// The nested JWS string for transaction info, if present.
    public let signedTransactionInfo: String?
    /// The specific notification status type.
    public let status: NotificationStatus?
}
