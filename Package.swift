// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "4.0.2"
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
        .package(url: "https://github.com/zoho/ZohoDeskPlatformUIKit.git", exact: "2.0.0-beta.9"),
        .package(url: "https://github.com/zoho/ZohoDeskPortalAPIKit", exact: "4.0.2")
    ],
    targets: [
        .binaryTarget(name: "ZohoDeskPortalConfiguration", url: "https://maven.zohodl.com/ZohoDesk/ZohoDeskPortalConfiguration/\(version)/ZohoDeskPortalConfiguration.zip", checksum: "575b69cfbcc1f3f23cdc464716e1ba230bae0fed58592349a420c43fdbb2ab84"),
        
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
