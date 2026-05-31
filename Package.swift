// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = Version("4.6.5")
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
        .package(url: "https://github.com/zoho/ZohoDeskPlatformUIKit.git", exact: "2.1.0-beta.3"),
        .package(url: "https://github.com/zoho/ZohoDeskPortalAPIKit", exact: version),
        .package(url: "https://github.com/zoho/ZDHelperKit-iOS.git", exact: "2.1.0")
    ],
    targets: [
        .binaryTarget(name: "ZohoDeskPortalConfiguration", url: "https://maven.zohodl.com/ZohoDesk/ZohoDeskPortalConfiguration/\(version.description)/ZohoDeskPortalConfiguration.zip", checksum: "e8eb968a4f9c678a76b1eee81b901552bc75073123832c9f41ae074e3d052db4"),
        
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
