//
// SmsMessage.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** SmsMessage model */

public struct SmsMessage: Codable {

    /** Your sender id - more info: http://help.clicksend.com/SMS/what-is-a-sender-id-or-sender-number. */
    public var from: String?
    /** Your message. */
    public var body: String
    /** Recipient phone number in E.164 format. */
    public var to: String
    /** Your method of sending e.g. &#39;wordpress&#39;, &#39;php&#39;, &#39;c#&#39;. */
    public var source: String?
    /** Leave blank for immediate delivery. Your schedule time in unix format http://help.clicksend.com/what-is-a-unix-timestamp */
    public var schedule: Int?
    /** Your reference. Will be passed back with all replies and delivery reports. */
    public var customString: String?
    /** Your list ID if sending to a whole list. Can be used instead of &#39;to&#39;. */
    public var listId: Int?
    /** Recipient country. */
    public var country: String?
    /** An email address where the reply should be emailed to. If omitted, the reply will be emailed back to the user who sent the outgoing SMS. */
    public var fromEmail: String?

    public init(from: String?, body: String, to: String, source: String?, schedule: Int?, customString: String?, listId: Int?, country: String?, fromEmail: String?) {
        self.from = from
        self.body = body
        self.to = to
        self.source = source
        self.schedule = schedule
        self.customString = customString
        self.listId = listId
        self.country = country
        self.fromEmail = fromEmail
    }

    public enum CodingKeys: String, CodingKey { 
        case from
        case body
        case to
        case source
        case schedule
        case customString = "custom_string"
        case listId = "list_id"
        case country
        case fromEmail = "from_email"
    }


}

