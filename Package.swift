// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "4.4.0"
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
        .package(url: "https://github.com/zoho/ZohoDeskPlatformUIKit.git", exact: "2.0.0-beta.16"),
        .package(url: "https://github.com/zoho/ZohoDeskPortalAPIKit", exact: "4.4.0"),
        .package(url: "https://github.com/zoho/ZDHelperKit-iOS.git", exact: "2.0.0")
    ],
    targets: [
        .binaryTarget(name: "ZohoDeskPortalConfiguration", url: "https://maven.zohodl.com/ZohoDesk/ZohoDeskPortalConfiguration/\(version)/ZohoDeskPortalConfiguration.zip", checksum: "e9f4ffde6e331ab199e2c7fc685793bd8a77e1d8b215d036cdd761ad323a70c0"),
        
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
