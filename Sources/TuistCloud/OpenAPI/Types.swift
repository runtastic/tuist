// Generated by swift-openapi-generator, do not modify.
@_spi(Generated) import OpenAPIRuntime
#if os(Linux)
@preconcurrency import Foundation
#else
import Foundation
#endif
/// A type that performs HTTP operations defined by the OpenAPI document.
public protocol APIProtocol: Sendable {
    /// - Remark: HTTP `GET /api/projects`.
    /// - Remark: Generated from `#/paths//api/projects/get(listProjects)`.
    func listProjects(_ input: Operations.listProjects.Input) async throws
        -> Operations.listProjects.Output
    /// - Remark: HTTP `POST /api/projects`.
    /// - Remark: Generated from `#/paths//api/projects/post(createProject)`.
    func createProject(_ input: Operations.createProject.Input) async throws
        -> Operations.createProject.Output
    /// - Remark: HTTP `GET /api/organizations`.
    /// - Remark: Generated from `#/paths//api/organizations/get(listOrganizations)`.
    func listOrganizations(_ input: Operations.listOrganizations.Input) async throws
        -> Operations.listOrganizations.Output
    /// - Remark: HTTP `POST /api/organizations`.
    /// - Remark: Generated from `#/paths//api/organizations/post(createOrganization)`.
    func createOrganization(_ input: Operations.createOrganization.Input) async throws
        -> Operations.createOrganization.Output
}
/// Server URLs defined in the OpenAPI document.
public enum Servers {
    /// Localhost deployment.
    public static func server1() throws -> URL {
        try URL(validatingOpenAPIServerURL: "http://127.0.0.1:3000/api")
    }
}
/// Types generated from the components section of the OpenAPI document.
public enum Components {
    /// Types generated from the `#/components/schemas` section of the OpenAPI document.
    public enum Schemas {
        /// - Remark: Generated from `#/components/schemas/Projects`.
        public struct Projects: Codable, Equatable, Hashable, Sendable {
            /// - Remark: Generated from `#/components/schemas/Projects/projects`.
            public var projects: [Components.Schemas.Project]
            /// Creates a new `Projects`.
            ///
            /// - Parameters:
            ///   - projects:
            public init(projects: [Components.Schemas.Project]) { self.projects = projects }
            public enum CodingKeys: String, CodingKey { case projects }
        }
        /// - Remark: Generated from `#/components/schemas/Project`.
        public struct Project: Codable, Equatable, Hashable, Sendable {
            /// - Remark: Generated from `#/components/schemas/Project/id`.
            public var id: Swift.Double
            /// - Remark: Generated from `#/components/schemas/Project/full_name`.
            public var full_name: Swift.String
            /// Creates a new `Project`.
            ///
            /// - Parameters:
            ///   - id:
            ///   - full_name:
            public init(id: Swift.Double, full_name: Swift.String) {
                self.id = id
                self.full_name = full_name
            }
            public enum CodingKeys: String, CodingKey {
                case id
                case full_name
            }
        }
        /// - Remark: Generated from `#/components/schemas/Organizations`.
        public struct Organizations: Codable, Equatable, Hashable, Sendable {
            /// - Remark: Generated from `#/components/schemas/Organizations/organizations`.
            public var organizations: [Components.Schemas.Organization]
            /// Creates a new `Organizations`.
            ///
            /// - Parameters:
            ///   - organizations:
            public init(organizations: [Components.Schemas.Organization]) {
                self.organizations = organizations
            }
            public enum CodingKeys: String, CodingKey { case organizations }
        }
        /// - Remark: Generated from `#/components/schemas/Organization`.
        public struct Organization: Codable, Equatable, Hashable, Sendable {
            /// - Remark: Generated from `#/components/schemas/Organization/id`.
            public var id: Swift.Double
            /// - Remark: Generated from `#/components/schemas/Organization/name`.
            public var name: Swift.String
            /// Creates a new `Organization`.
            ///
            /// - Parameters:
            ///   - id:
            ///   - name:
            public init(id: Swift.Double, name: Swift.String) {
                self.id = id
                self.name = name
            }
            public enum CodingKeys: String, CodingKey {
                case id
                case name
            }
        }
        /// - Remark: Generated from `#/components/schemas/Error`.
        public struct _Error: Codable, Equatable, Hashable, Sendable {
            /// - Remark: Generated from `#/components/schemas/Error/message`.
            public var message: Swift.String
            /// Creates a new `_Error`.
            ///
            /// - Parameters:
            ///   - message:
            public init(message: Swift.String) { self.message = message }
            public enum CodingKeys: String, CodingKey { case message }
        }
    }
    /// Types generated from the `#/components/parameters` section of the OpenAPI document.
    public enum Parameters {}
    /// Types generated from the `#/components/requestBodies` section of the OpenAPI document.
    public enum RequestBodies {}
    /// Types generated from the `#/components/responses` section of the OpenAPI document.
    public enum Responses {}
    /// Types generated from the `#/components/headers` section of the OpenAPI document.
    public enum Headers {}
}
/// API operations, with input and output types, generated from `#/paths` in the OpenAPI document.
public enum Operations {
    /// - Remark: HTTP `GET /api/projects`.
    /// - Remark: Generated from `#/paths//api/projects/get(listProjects)`.
    public enum listProjects {
        public static let id: String = "listProjects"
        public struct Input: Sendable, Equatable, Hashable {
            public struct Path: Sendable, Equatable, Hashable {
                /// Creates a new `Path`.
                public init() {}
            }
            public var path: Operations.listProjects.Input.Path
            public struct Query: Sendable, Equatable, Hashable {
                /// Creates a new `Query`.
                public init() {}
            }
            public var query: Operations.listProjects.Input.Query
            public struct Headers: Sendable, Equatable, Hashable {
                /// Creates a new `Headers`.
                public init() {}
            }
            public var headers: Operations.listProjects.Input.Headers
            public struct Cookies: Sendable, Equatable, Hashable {
                /// Creates a new `Cookies`.
                public init() {}
            }
            public var cookies: Operations.listProjects.Input.Cookies
            @frozen public enum Body: Sendable, Equatable, Hashable {}
            public var body: Operations.listProjects.Input.Body?
            /// Creates a new `Input`.
            ///
            /// - Parameters:
            ///   - path:
            ///   - query:
            ///   - headers:
            ///   - cookies:
            ///   - body:
            public init(
                path: Operations.listProjects.Input.Path = .init(),
                query: Operations.listProjects.Input.Query = .init(),
                headers: Operations.listProjects.Input.Headers = .init(),
                cookies: Operations.listProjects.Input.Cookies = .init(),
                body: Operations.listProjects.Input.Body? = nil
            ) {
                self.path = path
                self.query = query
                self.headers = headers
                self.cookies = cookies
                self.body = body
            }
        }
        @frozen public enum Output: Sendable, Equatable, Hashable {
            public struct Ok: Sendable, Equatable, Hashable {
                public struct Headers: Sendable, Equatable, Hashable {
                    /// Creates a new `Headers`.
                    public init() {}
                }
                /// Received HTTP response headers
                public var headers: Operations.listProjects.Output.Ok.Headers
                @frozen public enum Body: Sendable, Equatable, Hashable {
                    case json(Components.Schemas.Projects)
                }
                /// Received HTTP response body
                public var body: Operations.listProjects.Output.Ok.Body
                /// Creates a new `Ok`.
                ///
                /// - Parameters:
                ///   - headers: Received HTTP response headers
                ///   - body: Received HTTP response body
                public init(
                    headers: Operations.listProjects.Output.Ok.Headers = .init(),
                    body: Operations.listProjects.Output.Ok.Body
                ) {
                    self.headers = headers
                    self.body = body
                }
            }
            /// A success response with all available cloud projects.
            ///
            /// - Remark: Generated from `#/paths//api/projects/get(listProjects)/responses/200`.
            ///
            /// HTTP response code: `200 ok`.
            case ok(Operations.listProjects.Output.Ok)
            /// Undocumented response.
            ///
            /// A response with a code that is not documented in the OpenAPI document.
            case undocumented(statusCode: Int, OpenAPIRuntime.UndocumentedPayload)
        }
    }
    /// - Remark: HTTP `POST /api/projects`.
    /// - Remark: Generated from `#/paths//api/projects/post(createProject)`.
    public enum createProject {
        public static let id: String = "createProject"
        public struct Input: Sendable, Equatable, Hashable {
            public struct Path: Sendable, Equatable, Hashable {
                /// Creates a new `Path`.
                public init() {}
            }
            public var path: Operations.createProject.Input.Path
            public struct Query: Sendable, Equatable, Hashable {
                public var name: Swift.String
                public var organization: Swift.String?
                /// Creates a new `Query`.
                ///
                /// - Parameters:
                ///   - name:
                ///   - organization:
                public init(name: Swift.String, organization: Swift.String? = nil) {
                    self.name = name
                    self.organization = organization
                }
            }
            public var query: Operations.createProject.Input.Query
            public struct Headers: Sendable, Equatable, Hashable {
                /// Creates a new `Headers`.
                public init() {}
            }
            public var headers: Operations.createProject.Input.Headers
            public struct Cookies: Sendable, Equatable, Hashable {
                /// Creates a new `Cookies`.
                public init() {}
            }
            public var cookies: Operations.createProject.Input.Cookies
            @frozen public enum Body: Sendable, Equatable, Hashable {}
            public var body: Operations.createProject.Input.Body?
            /// Creates a new `Input`.
            ///
            /// - Parameters:
            ///   - path:
            ///   - query:
            ///   - headers:
            ///   - cookies:
            ///   - body:
            public init(
                path: Operations.createProject.Input.Path = .init(),
                query: Operations.createProject.Input.Query,
                headers: Operations.createProject.Input.Headers = .init(),
                cookies: Operations.createProject.Input.Cookies = .init(),
                body: Operations.createProject.Input.Body? = nil
            ) {
                self.path = path
                self.query = query
                self.headers = headers
                self.cookies = cookies
                self.body = body
            }
        }
        @frozen public enum Output: Sendable, Equatable, Hashable {
            public struct Ok: Sendable, Equatable, Hashable {
                public struct Headers: Sendable, Equatable, Hashable {
                    /// Creates a new `Headers`.
                    public init() {}
                }
                /// Received HTTP response headers
                public var headers: Operations.createProject.Output.Ok.Headers
                @frozen public enum Body: Sendable, Equatable, Hashable {
                    case json(Components.Schemas.Project)
                }
                /// Received HTTP response body
                public var body: Operations.createProject.Output.Ok.Body
                /// Creates a new `Ok`.
                ///
                /// - Parameters:
                ///   - headers: Received HTTP response headers
                ///   - body: Received HTTP response body
                public init(
                    headers: Operations.createProject.Output.Ok.Headers = .init(),
                    body: Operations.createProject.Output.Ok.Body
                ) {
                    self.headers = headers
                    self.body = body
                }
            }
            /// A success response with the created project.
            ///
            /// - Remark: Generated from `#/paths//api/projects/post(createProject)/responses/200`.
            ///
            /// HTTP response code: `200 ok`.
            case ok(Operations.createProject.Output.Ok)
            public struct BadRequest: Sendable, Equatable, Hashable {
                public struct Headers: Sendable, Equatable, Hashable {
                    /// Creates a new `Headers`.
                    public init() {}
                }
                /// Received HTTP response headers
                public var headers: Operations.createProject.Output.BadRequest.Headers
                @frozen public enum Body: Sendable, Equatable, Hashable {
                    case json(Components.Schemas._Error)
                }
                /// Received HTTP response body
                public var body: Operations.createProject.Output.BadRequest.Body
                /// Creates a new `BadRequest`.
                ///
                /// - Parameters:
                ///   - headers: Received HTTP response headers
                ///   - body: Received HTTP response body
                public init(
                    headers: Operations.createProject.Output.BadRequest.Headers = .init(),
                    body: Operations.createProject.Output.BadRequest.Body
                ) {
                    self.headers = headers
                    self.body = body
                }
            }
            /// The project could not be created because of a validation error.
            ///
            /// - Remark: Generated from `#/paths//api/projects/post(createProject)/responses/400`.
            ///
            /// HTTP response code: `400 badRequest`.
            case badRequest(Operations.createProject.Output.BadRequest)
            /// Undocumented response.
            ///
            /// A response with a code that is not documented in the OpenAPI document.
            case undocumented(statusCode: Int, OpenAPIRuntime.UndocumentedPayload)
        }
    }
    /// - Remark: HTTP `GET /api/organizations`.
    /// - Remark: Generated from `#/paths//api/organizations/get(listOrganizations)`.
    public enum listOrganizations {
        public static let id: String = "listOrganizations"
        public struct Input: Sendable, Equatable, Hashable {
            public struct Path: Sendable, Equatable, Hashable {
                /// Creates a new `Path`.
                public init() {}
            }
            public var path: Operations.listOrganizations.Input.Path
            public struct Query: Sendable, Equatable, Hashable {
                /// Creates a new `Query`.
                public init() {}
            }
            public var query: Operations.listOrganizations.Input.Query
            public struct Headers: Sendable, Equatable, Hashable {
                /// Creates a new `Headers`.
                public init() {}
            }
            public var headers: Operations.listOrganizations.Input.Headers
            public struct Cookies: Sendable, Equatable, Hashable {
                /// Creates a new `Cookies`.
                public init() {}
            }
            public var cookies: Operations.listOrganizations.Input.Cookies
            @frozen public enum Body: Sendable, Equatable, Hashable {}
            public var body: Operations.listOrganizations.Input.Body?
            /// Creates a new `Input`.
            ///
            /// - Parameters:
            ///   - path:
            ///   - query:
            ///   - headers:
            ///   - cookies:
            ///   - body:
            public init(
                path: Operations.listOrganizations.Input.Path = .init(),
                query: Operations.listOrganizations.Input.Query = .init(),
                headers: Operations.listOrganizations.Input.Headers = .init(),
                cookies: Operations.listOrganizations.Input.Cookies = .init(),
                body: Operations.listOrganizations.Input.Body? = nil
            ) {
                self.path = path
                self.query = query
                self.headers = headers
                self.cookies = cookies
                self.body = body
            }
        }
        @frozen public enum Output: Sendable, Equatable, Hashable {
            public struct Ok: Sendable, Equatable, Hashable {
                public struct Headers: Sendable, Equatable, Hashable {
                    /// Creates a new `Headers`.
                    public init() {}
                }
                /// Received HTTP response headers
                public var headers: Operations.listOrganizations.Output.Ok.Headers
                @frozen public enum Body: Sendable, Equatable, Hashable {
                    case json(Components.Schemas.Organizations)
                }
                /// Received HTTP response body
                public var body: Operations.listOrganizations.Output.Ok.Body
                /// Creates a new `Ok`.
                ///
                /// - Parameters:
                ///   - headers: Received HTTP response headers
                ///   - body: Received HTTP response body
                public init(
                    headers: Operations.listOrganizations.Output.Ok.Headers = .init(),
                    body: Operations.listOrganizations.Output.Ok.Body
                ) {
                    self.headers = headers
                    self.body = body
                }
            }
            /// A success response with all available cloud organizations.
            ///
            /// - Remark: Generated from `#/paths//api/organizations/get(listOrganizations)/responses/200`.
            ///
            /// HTTP response code: `200 ok`.
            case ok(Operations.listOrganizations.Output.Ok)
            /// Undocumented response.
            ///
            /// A response with a code that is not documented in the OpenAPI document.
            case undocumented(statusCode: Int, OpenAPIRuntime.UndocumentedPayload)
        }
    }
    /// - Remark: HTTP `POST /api/organizations`.
    /// - Remark: Generated from `#/paths//api/organizations/post(createOrganization)`.
    public enum createOrganization {
        public static let id: String = "createOrganization"
        public struct Input: Sendable, Equatable, Hashable {
            public struct Path: Sendable, Equatable, Hashable {
                /// Creates a new `Path`.
                public init() {}
            }
            public var path: Operations.createOrganization.Input.Path
            public struct Query: Sendable, Equatable, Hashable {
                public var name: Swift.String
                /// Creates a new `Query`.
                ///
                /// - Parameters:
                ///   - name:
                public init(name: Swift.String) { self.name = name }
            }
            public var query: Operations.createOrganization.Input.Query
            public struct Headers: Sendable, Equatable, Hashable {
                /// Creates a new `Headers`.
                public init() {}
            }
            public var headers: Operations.createOrganization.Input.Headers
            public struct Cookies: Sendable, Equatable, Hashable {
                /// Creates a new `Cookies`.
                public init() {}
            }
            public var cookies: Operations.createOrganization.Input.Cookies
            @frozen public enum Body: Sendable, Equatable, Hashable {}
            public var body: Operations.createOrganization.Input.Body?
            /// Creates a new `Input`.
            ///
            /// - Parameters:
            ///   - path:
            ///   - query:
            ///   - headers:
            ///   - cookies:
            ///   - body:
            public init(
                path: Operations.createOrganization.Input.Path = .init(),
                query: Operations.createOrganization.Input.Query,
                headers: Operations.createOrganization.Input.Headers = .init(),
                cookies: Operations.createOrganization.Input.Cookies = .init(),
                body: Operations.createOrganization.Input.Body? = nil
            ) {
                self.path = path
                self.query = query
                self.headers = headers
                self.cookies = cookies
                self.body = body
            }
        }
        @frozen public enum Output: Sendable, Equatable, Hashable {
            public struct Ok: Sendable, Equatable, Hashable {
                public struct Headers: Sendable, Equatable, Hashable {
                    /// Creates a new `Headers`.
                    public init() {}
                }
                /// Received HTTP response headers
                public var headers: Operations.createOrganization.Output.Ok.Headers
                @frozen public enum Body: Sendable, Equatable, Hashable {
                    case json(Components.Schemas.Organization)
                }
                /// Received HTTP response body
                public var body: Operations.createOrganization.Output.Ok.Body
                /// Creates a new `Ok`.
                ///
                /// - Parameters:
                ///   - headers: Received HTTP response headers
                ///   - body: Received HTTP response body
                public init(
                    headers: Operations.createOrganization.Output.Ok.Headers = .init(),
                    body: Operations.createOrganization.Output.Ok.Body
                ) {
                    self.headers = headers
                    self.body = body
                }
            }
            /// A success response with the created organization.
            ///
            /// - Remark: Generated from `#/paths//api/organizations/post(createOrganization)/responses/200`.
            ///
            /// HTTP response code: `200 ok`.
            case ok(Operations.createOrganization.Output.Ok)
            public struct BadRequest: Sendable, Equatable, Hashable {
                public struct Headers: Sendable, Equatable, Hashable {
                    /// Creates a new `Headers`.
                    public init() {}
                }
                /// Received HTTP response headers
                public var headers: Operations.createOrganization.Output.BadRequest.Headers
                @frozen public enum Body: Sendable, Equatable, Hashable {
                    case json(Components.Schemas._Error)
                }
                /// Received HTTP response body
                public var body: Operations.createOrganization.Output.BadRequest.Body
                /// Creates a new `BadRequest`.
                ///
                /// - Parameters:
                ///   - headers: Received HTTP response headers
                ///   - body: Received HTTP response body
                public init(
                    headers: Operations.createOrganization.Output.BadRequest.Headers = .init(),
                    body: Operations.createOrganization.Output.BadRequest.Body
                ) {
                    self.headers = headers
                    self.body = body
                }
            }
            /// The project could not be created because of a validation error.
            ///
            /// - Remark: Generated from `#/paths//api/organizations/post(createOrganization)/responses/400`.
            ///
            /// HTTP response code: `400 badRequest`.
            case badRequest(Operations.createOrganization.Output.BadRequest)
            /// Undocumented response.
            ///
            /// A response with a code that is not documented in the OpenAPI document.
            case undocumented(statusCode: Int, OpenAPIRuntime.UndocumentedPayload)
        }
    }
}