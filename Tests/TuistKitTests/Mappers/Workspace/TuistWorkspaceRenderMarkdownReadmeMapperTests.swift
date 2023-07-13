import Foundation
import TSCBasic
import TuistCore
import TuistCoreTesting
import TuistGraph
import XCTest

@testable import TuistKit
@testable import TuistSupportTesting

final class TuistWorkspaceRenderMarkdownReadmeMapperTests: TuistUnitTestCase {
    private var subject: TuistWorkspaceRenderMarkdownReadmeMapper!
    private var workspaceDirectory: AbsolutePath!

    override func setUpWithError() throws {
        try super.setUpWithError()
        workspaceDirectory = try temporaryPath()
        subject = .init()
    }

    override func tearDown() {
        subject = nil
        super.tearDown()
    }

    func test_map_with_readme_rendered() throws {
        // Given
        let workspace = Workspace.test(generationOptions: Workspace.GenerationOptions(
            enableAutomaticXcodeSchemes: false,
            autogeneratedWorkspaceSchemes: .disabled,
            lastXcodeUpgradeCheck: nil,
            renderMarkdownReadme: true
        ))

        let tuistGeneratedFileDescriptor = FileDescriptor(
            path: workspace
                .xcWorkspacePath
                .appending(
                    component: ".xcodesamplecode.plist"
                ),
            contents: try PropertyListEncoder().encode([String]())
        )

        let workspaceWithProjects = WorkspaceWithProjects(workspace: workspace, projects: [])
        // When
        let (gotWorkspaceWithProjects, sideEffects) = try TuistWorkspaceRenderMarkdownReadmeMapper()
            .map(workspace: workspaceWithProjects)

        // Then
        XCTAssertTrue(
            gotWorkspaceWithProjects.workspace.generationOptions.renderMarkdownReadme
        )
        XCTAssertTrue(gotWorkspaceWithProjects.workspace.projects.isEmpty)
        XCTAssertEqual(
            sideEffects,
            [
                .file(tuistGeneratedFileDescriptor),
            ]
        )
    }

    func test_map_without_readme_rendered() throws {
        // Given
        let workspace = Workspace.test(generationOptions: Workspace.GenerationOptions(
            enableAutomaticXcodeSchemes: false,
            autogeneratedWorkspaceSchemes: .disabled,
            lastXcodeUpgradeCheck: nil,
            renderMarkdownReadme: false
        ))

        let tuistGeneratedFileDescriptor = FileDescriptor(
            path: workspace
                .xcWorkspacePath
                .appending(
                    component: ".xcodesamplecode.plist"
                ),
            contents: try PropertyListEncoder().encode([String]()),
            state: .absent // file should be deleted
        )
        let workspaceWithProjects = WorkspaceWithProjects(workspace: workspace, projects: [])
        // When
        let (gotWorkspaceWithProjects, sideEffects) = try TuistWorkspaceRenderMarkdownReadmeMapper()
            .map(workspace: workspaceWithProjects)

        // Then
        XCTAssertFalse(
            gotWorkspaceWithProjects.workspace.generationOptions.renderMarkdownReadme
        )
        XCTAssertTrue(gotWorkspaceWithProjects.workspace.projects.isEmpty)
        XCTAssertEqual(
            sideEffects,
            [
                .file(tuistGeneratedFileDescriptor),
            ]
        )
    }
}
