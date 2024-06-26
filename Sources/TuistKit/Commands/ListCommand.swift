import ArgumentParser
import Foundation

struct ListCommand: AsyncParsableCommand {
    static var configuration: CommandConfiguration {
        CommandConfiguration(
            commandName: "list",
            _superCommandName: "scaffold",
            abstract: "Lists available scaffold templates",
            subcommands: []
        )
    }

    @Flag(
        help: "The output in JSON format"
    )
    var json: Bool = false

    @Option(
        name: .shortAndLong,
        help: "The path where you want to list templates from",
        completion: .directory
    )
    var path: String?

    func run() async throws {
        let format: ListService.OutputFormat = json ? .json : .table
        try await ListService().run(
            path: path,
            outputFormat: format
        )
    }
}
