# VaporAppStoreNotifications

A Swift Package for Vapor that simply decodes the raw HTTP body of App Store Server Notification webhooks into strongly‑typed models—leaving routing, storage and business logic entirely up to you.

## Features

- 🔐 JWS signature verification against Apple’s Root CA
- 🎯 Single-purpose API: decode the raw body you pass in  
- 🧩 Fully modular—integrate into any route or middleware  
- ⚙️ One‑time decoder initialization for optimal performance  

## Requirements

- Swift 6.0 or later  
- Vapor 4  
- macOS 13+ / Linux  

## Installation

In your `Package.swift` dependencies:

```swift
.package(
  url: "https://github.com/JohannPetzold/vapor-asndecode",
  from: "1.0.0"
),
```

Add to your target dependencies:

```swift
.target(
  name: "App",
  dependencies: [
    .product(
      name: "ASNDecoder",
      package: "vapor-asndecoder"
    )
  ]
)
```

## Usage

1. **Download and convert the Apple Root Certificate**:

   - Download the **Apple Root CA - G3** certificate from Apple’s official page:  
     [https://www.apple.com/certificateauthority/](https://www.apple.com/certificateauthority/)

   - Convert the downloaded `.cer` file to `.pem` format:  
     Open your terminal, navigate to the folder containing the certificate, and run:

     ```bash
     openssl x509 -inform der -in AppleRootCA-G3.cer -outform pem -out AppleRootCA-G3.pem
     ```

   - Add the `AppleRootCA-G3.pem` file to your Vapor project at:  
     `Resources/Certificates/`

1. **Create the controller**:

    ```swift
    import Vapor
    import ASNDecoder
    
    struct AppStoreNotificationsController: ASNRouteCollection {
      internal var appStoreDecoder: AppStoreNotificationDecoder
    
      init(appleRootCertString: String) throws {
        appStoreDecoder = try AppStoreNotificationDecoder(appleRootCertPEM: appleRootCertString)
      }
      
      func boot(routes: any RoutesBuilder) throws {
        let notificationRoute = routes.grouped("api", "appstore", "notification")
        
        notificationRoute.on(.POST, body: .collect(maxSize: "1mb"), use: handleNotification)
      }
    }
    ```

2. **Register the controller with the Apple Root Cert String** (e.g. in `routes.swift`):
    ```swift
    import Vapor

    public func configure(_ app: Application) throws {
      let appleRootCertString = try String(contentsOfFile: app.directory.resourcesDirectory +  "Certificates/AppleRootCA-G3.pem")
      
      try app.register(collection: AppStoreNotificationsController(appleRootCertString: appleRootCertString))
    }
    ```

3. **Decode the incoming webhook body**:

    ```swift
    struct AppStoreNotificationsController: ASNRouteCollection {
        func handleNotification(_ req: Request) async throws -> HTTPResponseStatus {
          guard let body = req.body.data else {
            return HTTPResponseStatus(statusCode: 400)
          }
        
          let (payload, renewal, transaction) = try await appStoreDecoder.decode(body)
          
          // Handle the App Store Server Notification datas
          // e.g. send Slack notification
          SlackManager.sendAppStoreNotification(for: payload, renewalInfoPayload: renewal, transactionPayload: transaction, using: req)
        
          return HTTPResponseStatus(statusCode: 200)
      }
    }
    ```

## Contributing

1. Fork this repository  
2. Create a feature branch (`git checkout -b feature/my-feature`)  
3. Submit a Pull Request  

## License

MIT © Johann Petzold
