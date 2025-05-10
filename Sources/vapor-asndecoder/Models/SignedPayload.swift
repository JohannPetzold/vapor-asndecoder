/// A wrapper for the raw signed JWS payload string received from App Store Server Notifications.
/// Decodable from the outer JSON to extract the `signedPayload` field.
public struct SignedPayload: Decodable {
    /// The raw JWS compact serialization string to be verified and decoded.
    public let signedPayload: String
    
    /// Initializes the SignedPayload with the raw JWS string.
    /// - Parameter signedPayload: The JWS compact serialization string.
    public init(signedPayload: String) {
        self.signedPayload = signedPayload
    }
}
