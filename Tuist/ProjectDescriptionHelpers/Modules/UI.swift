import ModuleDescription

extension Module {
    public static var ui: Module {
        Module(name: .ui, config: moduleConfig)
    }
}

extension ModuleName {
    public static var ui: ModuleName = "UI"
}

private let moduleConfig = Module.Config(
    hasResources: false,
    testConfig: Module.TestConfig(hasResources: false)
)
