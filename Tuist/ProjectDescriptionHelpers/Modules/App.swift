import Foundation
import ProjectDescription
import ModuleDescription

extension Module {
    public static var sampleApp: Module {
        .init(name: .sampleApp, config: appConfig)
    }
}

extension ModuleName {
    public static var sampleApp: ModuleName = "App"
}

private let appConfig = Module.Config(
    dependencies: [
        .module(.models),
        .module(.ui),
    ],
    product: .custom(.app),
    testConfig: Module.TestConfig(hasResources: false)
)
