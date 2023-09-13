public final class PluginConfiguration {
    public static let shared = PluginConfiguration()

    /// Declares the bundle ID of the main app or product being built and is used for things like build settings
    /// when creating bundle IDs of modules, resource bundles, etc.
    public static var bundleBaseID = ""

    private init() {}
}
