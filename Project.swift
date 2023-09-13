import ProjectDescription
import ProjectDescriptionHelpers
import ModulePlugin

/*
                +-------------+
                |             |
                |     App     | Contains TuistModules App target and TuistModules unit-test target
                |             |
         +------+-------------+-------+
         |         depends on         |
         |                            |
 +----v-----+                   +-----v-----+
 |          |                   |           |
 |   Kit    |                   |     UI    |   Two independent frameworks to share code and start modularising your app
 |          |                   |           |
 +----------+                   +-----------+

 */

// MARK: - Project

let project = Project(
    bundleID: "com.example.modules",
    modules: [
        .sampleApp,
        .models,
        .ui
    ]
)
