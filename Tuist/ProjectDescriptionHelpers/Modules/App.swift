import Foundation
import ProjectDescription

extension Module {
    public static var sampleApp: Module {
        .init(name: .sampleApp, config: appConfig)
    }
}

extension ModuleName {
    public static var sampleApp: ModuleName = "App"
}

private let appConfig = Module.Config(
    headers: nil,
    actions: [],
    dependencies: [
        .module(.models),
        .module(.ui),
    ],
    additionalFiles: [],
    product: .custom(.app),
    hasResources: false,
    testConfig: Module.TestConfig(hasResources: false)
)
