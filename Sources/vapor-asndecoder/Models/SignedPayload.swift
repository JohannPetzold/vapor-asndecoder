public struct SignedPayload: Decodable {
    public let signedPayload: String
    
    public init(signedPayload: String) {
        self.signedPayload = signedPayload
    }
}
