internal typealias SettingConfig = BuildConfiguration

public enum BuildConfiguration: String {
    case debug = "Debug"
    case distribution = "Distribution"
    case release = "Release"
}
