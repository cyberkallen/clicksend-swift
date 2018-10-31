//
// Email.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Send Email */

public struct Email: Codable {

    /** Array of To Recipient items. */
    public var to: [EmailRecipient]
    /** Array of Cc Recipient items. */
    public var cc: [EmailRecipient]?
    /** Array of Bcc Recipient items. */
    public var bcc: [EmailRecipient]?
    /** From Email object. */
    public var from: [EmailFrom]
    /** Body of the email. */
    public var body: String
    /** Array of Attachment items. */
    public var attachments: [Attachment]?
    /** Schedule. */
    public var schedule: Double?

    public init(to: [EmailRecipient], cc: [EmailRecipient]?, bcc: [EmailRecipient]?, from: [EmailFrom], body: String, attachments: [Attachment]?, schedule: Double?) {
        self.to = to
        self.cc = cc
        self.bcc = bcc
        self.from = from
        self.body = body
        self.attachments = attachments
        self.schedule = schedule
    }


}

