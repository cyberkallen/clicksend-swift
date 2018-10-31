//
// ResellerAccount.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** ResellerAccount model */

public struct ResellerAccount: Codable {

    /** Account username */
    public var username: String
    /** Account password (unhashed) */
    public var password: String
    /** Account email */
    public var userEmail: String
    /** Account phone number */
    public var userPhone: String
    /** Account owner first name */
    public var userFirstName: String
    /** Account owner last name */
    public var userLastName: String
    /** Account name (usually company name) */
    public var accountName: String
    /** Country of account holder */
    public var country: String

    public init(username: String, password: String, userEmail: String, userPhone: String, userFirstName: String, userLastName: String, accountName: String, country: String) {
        self.username = username
        self.password = password
        self.userEmail = userEmail
        self.userPhone = userPhone
        self.userFirstName = userFirstName
        self.userLastName = userLastName
        self.accountName = accountName
        self.country = country
    }

    public enum CodingKeys: String, CodingKey { 
        case username
        case password
        case userEmail = "user_email"
        case userPhone = "user_phone"
        case userFirstName = "user_first_name"
        case userLastName = "user_last_name"
        case accountName = "account_name"
        case country
    }


}

