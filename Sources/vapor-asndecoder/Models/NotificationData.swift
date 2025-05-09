public struct NotificationData: Codable, Sendable {
    public let appAppleId: Int64?
    public let bundleId: String?
    public let bundleVersion: String?
    public let consumptionRequestReason: ConsumptionRequestReason?
    public let environment: NotificationEnvironment?
    public let signedRenewalInfo: String?
    public let signedTransactionInfo: String?
    public let status: NotificationStatus?
}
