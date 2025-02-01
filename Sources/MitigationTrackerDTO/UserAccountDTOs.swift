// The Swift Programming Language
// https://docs.swift.org/swift-book
import Foundation

public struct LoginResponseDTO: Codable, @unchecked Sendable {
    public let error: Bool
    public var reason: String?
    public let token: String?
    public let userId: UUID?
    public let tempPassword: Bool?
    public let accountId: UUID?
    
    public init(error: Bool = false, token: String? = nil, userId: UUID? = nil, reason: String? = nil, tempPassword: Bool? = false, accountId: UUID? = nil) {
        self.error = error
        self.token = token
        self.userId = userId
        self.reason = reason
        self.tempPassword = tempPassword
        self.accountId = accountId
    }
}

public struct RegisterResponseDTO: Codable, @unchecked Sendable {
    public let error: Bool
    public var reason: String? = nil
    
    public init(error: Bool = false, reason: String? = nil) {
        self.error = error
        self.reason = reason
    }
}

public struct AccountRequestDTO: Codable, @unchecked Sendable {
    public let companyName: String
    public let email: String?
    public let phone: String?
    public let address: String?
    public let address2: String?
    public let city: String?
    public let state: String?
    public let zip: String?
    
    public init(
        companyName: String,
        email: String? = nil,
        phone: String? = nil,
        address: String? = nil,
        address2: String? = nil,
        city: String? = nil,
        state: String? = nil,
        zip: String? = nil
    ) {
        self.companyName = companyName
        self.email = email
        self.phone = phone
        self.address = address
        self.address2 = address2
        self.city = city
        self.state = state
        self.zip = zip
    }
}

public struct AccountResponseDTO: Codable, @unchecked Sendable {
    // May need owner information later, not sure yet.
    public let error: Bool
    public var reason: String? = nil
    public let accountId: UUID?
    public let companyName: String?
    public let email: String?
    public let phone: String?
    public let address: String?
    public let address2: String?
    public let city: String?
    public let state: String?
    public let zip: String?
    public let subscriptionPlanId: UUID?
    // May need to add array of users belonging to the account
    
    public init(
        error: Bool = false,
        reason: String? = nil,
        accountId: UUID? = nil,
        companyName: String? = nil,
        email: String? = nil,
        phone: String? = nil,
        address: String? = nil,
        address2: String? = nil,
        city: String? = nil,
        state: String? = nil,
        zip: String? = nil,
        subscriptionPlanId: UUID? = nil
    ) {
        self.error = error
        self.reason = reason
        self.accountId = accountId
        self.companyName = companyName
        self.email = email
        self.phone = phone
        self.address = address
        self.address2 = address2
        self.city = city
        self.state = state
        self.zip = zip
        self.subscriptionPlanId = subscriptionPlanId
    }
}

public struct SubscriptionRequestDTO: Codable, @unchecked Sendable {
    public let planId: UUID
    public let accountId: UUID
    
    public init(planId: UUID, accountId: UUID) {
        self.planId = planId
        self.accountId = accountId
    }
}

public struct SubscriptionResponseDTO: Codable, @unchecked Sendable {
    public let error: Bool
    public var reason: String? = nil
    public let id: UUID?
    public let planId: UUID?
    public let accountId: UUID?
    public let createdAt: Date?
    public let expiresOn: Date?
    
    public init(
        error: Bool = false,
        reason: String? = nil,
        id: UUID? = nil,
        planId: UUID? = nil,
        accountId: UUID? = nil,
        createdAt: Date? = nil,
        expiresOn: Date? = nil) {
            self.error = error
            self.reason = reason
            self.id = id
            self.planId = planId
            self.accountId = accountId
            self.createdAt = createdAt
            self.expiresOn = expiresOn
    }
}

public struct SubscriptionPlanResponseDTO: Codable, @unchecked Sendable {
    public let error: Bool
    public var reason: String? = nil
    public let id: UUID?
    public let name: String?
    public let description: String?
    public let price: Double?
    public let duration: Int?
    public let trialDuration: Int?
    public let isDefault: Bool?
    public let maxUsers: Int?
    public let subscriptions: [SubscriptionResponseDTO]?
    
    public init(
        error: Bool = false,
        reason: String? = nil,
        id: UUID? = nil,
        name: String? = nil,
        description: String? = nil,
        price: Double? = nil,
        duration: Int? = nil,
        trialDuration: Int? = nil,
        isDefault: Bool? = nil,
        maxUsers: Int? = nil,
        subscriptions: [SubscriptionResponseDTO]? = nil
    ) {
        self.error = error
        self.reason = reason
        self.id = id
        self.name = name
        self.description = description
        self.price = price
        self.duration = duration
        self.trialDuration = trialDuration
        self.isDefault = isDefault
        self.maxUsers = maxUsers
        self.subscriptions = subscriptions
    }
}
