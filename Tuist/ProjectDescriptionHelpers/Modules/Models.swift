extension Module {
    public static var models: Module {
        Module(name: .models, config: moduleConfig)
    }
}

extension ModuleName {
    public static var models: ModuleName = "Models"
}

private let moduleConfig = Module.Config(
    hasResources: false,
    testConfig: Module.TestConfig(hasResources: false)
)
