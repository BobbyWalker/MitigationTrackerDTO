// The Swift Programming Language
// https://docs.swift.org/swift-book
import Foundation

public struct LoginResponseDTO: Codable {
    public let error: Bool
    public var reason: String?
    public let token: String?
    public let userId: UUID?
    
    public init(error: Bool = false, token: String? = nil, userId: UUID? = nil, reason: String? = nil) {
        self.error = error
        self.token = token
        self.userId = userId
        self.reason = reason
    }
}

public struct RegisterResponseDTO: Codable {
    public let error: Bool
    public var reason: String? = nil
    
    public init(error: Bool = false, reason: String? = nil) {
        self.error = error
        self.reason = reason
    }
}
