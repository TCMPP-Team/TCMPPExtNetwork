// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "TCMPPExtNetwork",
    platforms: [
        .iOS(.v12),
    ],
    products: [
        .library(
            name: "TCMPPExtNetwork",
            targets: ["TCMPPExtNetworkWrapper"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/robbiehanson/CocoaAsyncSocket.git", .upToNextMajor(from: "7.0.0"))
    ],
    targets: [
        .binaryTarget(
            name: "TCMPPExtNetwork",
            url: "https://tmf-warehouse-1314481471.cos.ap-beijing.myqcloud.com/tcmpp/ios-sdk/TCMPPExtNetwork/2.0.1/TCMPPExtNetwork_2.0.1.xcframework.zip",
            checksum: "207b727fe572a438f3f95f4687ec9079d0806f632437cc32fb7de132e9bedab9"

        ),
        .target(
            name: "TCMPPExtNetworkWrapper",
            dependencies: [
                "TCMPPExtNetwork",
                .product(name: "CocoaAsyncSocket", package: "CocoaAsyncSocket")
            ],
            resources: []
        )
    ]
) 
