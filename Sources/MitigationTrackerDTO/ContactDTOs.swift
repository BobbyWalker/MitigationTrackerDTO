//
//  File.swift
//  mitigation-tracker-dto
//
//  Created by Bobby Walker on 2/5/25.
//

import Foundation

public struct ContactRequestDTO: Codable, @unchecked Sendable {
    public let error: Bool
    public let reason: String?
    public let firstName: String?
    public let name: String?
    public let email: String?
    public let phone: String?
    public let address: String?
    public let createdAt: Date?
    public let updatedAt: Date?
    
    public init(
        error: Bool = false,
        reason: String? = nil,
        firstName: String? = nil,
        name: String? = nil,
        email: String? = nil,
        phone: String? = nil,
        address: String? = nil,
        createdAt: Date? = nil,
        updatedAt: Date? = nil
    ) {
        self.error = error
        self.reason = reason
        self.firstName = firstName
        self.name = name
        self.email = email
        self.phone = phone
        self.address = address
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }
}

public struct ContactResponseDTO: Codable, @unchecked Sendable {
    public let error: Bool
    public let reason: String?
    public let id: UUID?
    public let firstName: String?
    public let name: String?
    public let email: String?
    public let phone: String?
    public let address: String?
    public let createdAt: Date?
    public let updatedAt: Date?
    
    public init(
        error: Bool = false,
        reason: String? = nil,
        id: UUID? = nil,
        firstName: String? = nil,
        name: String? = nil,
        email: String? = nil,
        phone: String? = nil,
        address: String? = nil,
        createdAt: Date? = nil,
        updatedAt: Date? = nil
    ) {
        self.error = error
        self.reason = reason
        self.id = id
        self.firstName = firstName
        self.name = name
        self.email = email
        self.phone = phone
        self.address = address
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }
}
