// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = Version("4.6.1")
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
        .package(url: "https://github.com/zoho/ZohoDeskPlatformUIKit.git", exact: "2.1.0-beta.1"),
        .package(url: "https://github.com/zoho/ZohoDeskPortalAPIKit", exact: version),
        .package(url: "https://github.com/zoho/ZDHelperKit-iOS.git", exact: "2.1.0")
    ],
    targets: [
        .binaryTarget(name: "ZohoDeskPortalConfiguration", url: "https://maven.zohodl.com/ZohoDesk/ZohoDeskPortalConfiguration/\(version.description)/ZohoDeskPortalConfiguration.zip", checksum: "a3a5757d95361dda79c59955116e4b7649cb0760d8de6703a82d4132812a1e76"),
        
        .target(
            name: "ZohoDeskPortalConfigurationPackage",
            dependencies: [
                .product(name: "ZohoDeskPlatformUIKit", package: "ZohoDeskPlatformUIKit"),
                .product(name: "ZDMediaPickerSDK", package: "ZohoDeskPlatformUIKit"),
                .product(name: "ZohoDeskPlatformDataBridge", package: "ZohoDeskPlatformUIKit"),
                .product(name: "ZohoDeskPortalAPIKit", package: "ZohoDeskPortalAPIKit"),
                .product(name: "ZDHelperKit", package: "ZDHelperKit-iOS")
            ]
        )
    ]
)
