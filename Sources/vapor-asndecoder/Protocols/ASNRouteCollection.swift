import Vapor

/// A RouteCollection protocol for handling App Store Server Notification webhooks.
/// Conforming types get a configured `appStoreDecoder` initialized with Apple's root certificate.
public protocol ASNRouteCollection: RouteCollection {
    /// The decoder used to verify and decode JWS payloads from App Store notifications.
    var appStoreDecoder: AppStoreNotificationDecoder { get set }
    /// Initializes the route collection with the Apple Root CA certificate in PEM format.
    /// - Parameter appleRootCertString: The Apple Root CA certificate as a PEM string.
    /// - Throws: If the decoder cannot be created with the given certificate.
    init(appleRootCertString: String) throws
}
