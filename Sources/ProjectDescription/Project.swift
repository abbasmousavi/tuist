import Foundation

// MARK: - Project

public class Project: Codable {
    public let name: String
    public let packages: [Package]
    public let targets: [Target]
    public let schemes: [Scheme]
    public let settings: Settings?
    public let additionalFiles: [FileElement]

    public init(name: String,
                packages: [Package] = [],
                settings: Settings? = nil,
                targets: [Target] = [],
                schemes: [Scheme] = [],
                additionalFiles: [FileElement] = []) {
        self.name = name
        self.packages = packages
        self.targets = targets
        self.schemes = schemes
        self.settings = settings
        self.additionalFiles = additionalFiles
        dumpIfNeeded(self)
    }
}
