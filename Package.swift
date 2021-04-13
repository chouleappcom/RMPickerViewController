// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "RMPickerViewController",
    platforms: [
        .iOS(.v10)
    ],
    products: [
        .library(name: "RMPickerViewController", targets: ["RMPickerViewController"])
    ],
    dependencies: [
    	.package(url: "https://github.com/chouleappcom/RMActionController.git", .exact("2.0.0"))
    ],
    targets: [
        .target(
            name: "RMPickerViewController",
            dependencies: [
            	"RMActionController"
            ],
            path: ".",
            sources: [
                "RMPickerViewController"
            ],
            publicHeadersPath: "RMPickerViewController",
            linkerSettings: [
                .linkedFramework("UIKit")
            ]
        )
    ],
    swiftLanguageVersions: [.v5]
)
