import PackageDescription

let package = Package(
    name: "czookeeper",
    providers: [.Apt("libzookeeper-mt-dev")]
)
