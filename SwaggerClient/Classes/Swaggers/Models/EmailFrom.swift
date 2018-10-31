//
// EmailFrom.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Email being sent from */

public struct EmailFrom: Codable {

    /** Email of the recipient. */
    public var email: String
    /** Name of the recipient. */
    public var name: String?

    public init(email: String, name: String?) {
        self.email = email
        self.name = name
    }


}

