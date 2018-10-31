//
// MmsMessage.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Single MMS message model */

public struct MmsMessage: Codable {

    /** Recipient phone number in E.164 format */
    public var to: String
    /** Your message */
    public var body: String
    /** Subject line (max 20 characters) */
    public var subject: String
    /** Your sender ID */
    public var from: String?
    /** Recipient country */
    public var country: String?
    /** Your method of sending */
    public var source: String?
    /** Your list ID if sending to a whole list (can be used instead of &#39;to&#39;) */
    public var listId: Int?
    /** Schedule time in unix format (leave blank for immediate delivery) */
    public var schedule: Int?
    /** Custom string for your reference */
    public var customString: String?
    /** Email to send replies to */
    public var fromEmail: String?

    public init(to: String, body: String, subject: String, from: String?, country: String?, source: String?, listId: Int?, schedule: Int?, customString: String?, fromEmail: String?) {
        self.to = to
        self.body = body
        self.subject = subject
        self.from = from
        self.country = country
        self.source = source
        self.listId = listId
        self.schedule = schedule
        self.customString = customString
        self.fromEmail = fromEmail
    }

    public enum CodingKeys: String, CodingKey { 
        case to
        case body
        case subject
        case from
        case country
        case source
        case listId = "list_id"
        case schedule
        case customString = "custom_string"
        case fromEmail = "from_email"
    }


}

