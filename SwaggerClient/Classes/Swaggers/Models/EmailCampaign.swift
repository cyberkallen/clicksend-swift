//
// EmailCampaign.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Campaign Model for Email */

public struct EmailCampaign: Codable {

    /** Your campaign name. */
    public var name: String
    /** Your campaign subject. */
    public var subject: String
    /** Your campaign message. */
    public var body: String
    /** The allowed email address id. */
    public var fromEmailAddressId: Double
    /** Your name or business name. */
    public var fromName: String
    /** Your template id. */
    public var templateId: Double?
    /** Your contact list id. */
    public var listId: Double
    /** Your schedule timestamp. */
    public var schedule: Int?

    public init(name: String, subject: String, body: String, fromEmailAddressId: Double, fromName: String, templateId: Double?, listId: Double, schedule: Int?) {
        self.name = name
        self.subject = subject
        self.body = body
        self.fromEmailAddressId = fromEmailAddressId
        self.fromName = fromName
        self.templateId = templateId
        self.listId = listId
        self.schedule = schedule
    }

    public enum CodingKeys: String, CodingKey { 
        case name
        case subject
        case body
        case fromEmailAddressId = "from_email_address_id"
        case fromName = "from_name"
        case templateId = "template_id"
        case listId = "list_id"
        case schedule
    }


}

