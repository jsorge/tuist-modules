import Foundation
import ProjectDescription

extension TargetScript {
    /// Removes the executable from a resource bundle target as a post-build action.
    public static var removeBundleExecutable: TargetScript {
        return .post(
            script: """
              FILE="${BUILT_PRODUCTS_DIR}/${TARGET_NAME}.bundle/${TARGET_NAME}"
              if [[ -f $FILE ]];then
                  rm "$FILE"
              fi
              """,
            name: "Remove Embedded Executable"
        )
    }

    /// In debug builds, starts the Accessibility Inspector.

    static var openAccessibilityInspector: TargetScript {
        return .pre(
            script: """
                if [ "${CONFIGURATION}" = "Debug" ]; then
                  make load-accessibility-inspector
                fi
            """,
            name: "Open Accessibility Inspector"
        )
    }
}
