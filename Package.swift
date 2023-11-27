// swift-tools-version: 5.5
import PackageDescription

let package = Package(
    name: "ConnectSDK",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "ConnectSDK",
            targets: ["ConnectSDK", "ConnectSDKDependencies"])
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-protobuf.git", from: "1.16.0"),
        .package(url: "https://github.com/aws-amplify/aws-sdk-ios-spm", from: "2.0.0"),
        .package(url: "https://github.com/krzyzanowskim/OpenSSL.git", from: "1.0.0"),
        .package(url: "https://github.com/weichsel/ZIPFoundation.git", from: "0.9.16"),
        .package(url: "https://github.com/NordicSemiconductor/IOS-nRF-Connect-Device-Manager", from: "1.0.0")
    ],
    targets: [
        .binaryTarget(
            name: "ConnectSDK",
            url: "https://dl.cloudsmith.io/CujHIwqxWVjq8tLK/proglove/markconnectiossdk-dev/raw/versions/2.2.0/ConnectSDK-2.2.0.xcframework.zip",
            checksum: "dd19076f2b6c5a5766aa59427ebabc8dbe78577dbf98d5dd1e56eafc35eb828c"),
        .target(
            name: "ConnectSDKDependencies",
            dependencies: [
                "OpenSSL",
                "ZIPFoundation",
                .target(name: "ConnectSDK"),
                .product(name: "SwiftProtobuf", package: "swift-protobuf"),
                .product(name: "iOSMcuManagerLibrary", package: "IOS-nRF-Connect-Device-Manager"),
                .product(name: "AWSCore", package: "aws-sdk-ios-spm"),
                .product(name: "AWSAuthCore", package: "aws-sdk-ios-spm"),
                .product(name: "AWSCognitoIdentityProvider", package: "aws-sdk-ios-spm"),
                .product(name: "AWSCognitoIdentityProviderASF", package: "aws-sdk-ios-spm"),
                .product(name: "AWSIoT", package: "aws-sdk-ios-spm"),
                .product(name: "AWSMobileClientXCF", package: "aws-sdk-ios-spm")],
                path: "Sources/ConnectSDK"
        )
    ]
)
