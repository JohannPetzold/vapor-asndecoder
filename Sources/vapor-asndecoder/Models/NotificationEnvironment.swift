/// The App Store notification environment.
/// - sandbox: Use the sandbox environment for testing.
/// - production: Use the production environment for live notifications.
public enum NotificationEnvironment: String, Codable, Sendable {
    /// Sandbox environment for testing notifications.
    case sandbox = "Sandbox"
    /// Production environment for live notifications.
    case production = "Production"
}
