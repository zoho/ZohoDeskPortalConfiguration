// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "4.2.0"
let package = Package(
    name: "ZohoDeskPortalConfiguration",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "ZohoDeskPortalConfiguration",
            targets: ["ZohoDeskPortalConfiguration", "ZohoDeskPortalConfigurationPackage"]),
    ],
    dependencies: [
        .package(url: "https://github.com/zoho/ZohoDeskPlatformUIKit.git", exact: "2.0.0-beta.14"),
        .package(url: "https://github.com/zoho/ZohoDeskPortalAPIKit", exact: "4.2.0")
    ],
    targets: [
        .binaryTarget(name: "ZohoDeskPortalConfiguration", url: "https://maven.zohodl.com/ZohoDesk/ZohoDeskPortalConfiguration/\(version)/ZohoDeskPortalConfiguration.zip", checksum: "6c0409e1e6e413120fbba333e025dd0b44b9bebebf55d4505feceb5d1a4fcbfb"),
        
        .target(
            name: "ZohoDeskPortalConfigurationPackage",
            dependencies: [
                .product(name: "ZohoDeskPlatformUIKit", package: "ZohoDeskPlatformUIKit"),
                .product(name: "ZDMediaPickerSDK", package: "ZohoDeskPlatformUIKit"),
                .product(name: "ZohoDeskPlatformDataBridge", package: "ZohoDeskPlatformUIKit"),
                .product(name: "ZohoDeskPortalAPIKit", package: "ZohoDeskPortalAPIKit")
            ]
        )
    ]
)
