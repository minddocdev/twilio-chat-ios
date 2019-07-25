//  Converted to Swift 5 by MindDoc - https://minddoc.de
//
//  TCHResult.swift
//  Twilio Chat Client
//
//  Copyright (c) 2018 Twilio, Inc. All rights reserved.
//

import Foundation

/** Result class passed via completion blocks.  Contains a boolean property, `isSuccessful`, which
 indicates the result of the operation and an error object if the operation failed.
 */

open class TCHResult: NSObject {
    //* The result's TCHError if the operation failed.
    public var error: TCHError?
    //* The result code for the operation.
    public var resultCode = 0
    //* The result descriptive text for the operation.
    public var resultText: String?

    /** Indicates the success or failure of the given operation.

     @return Boolean YES if the operation was successful, NO otherwise.
     */
    public func isSuccessful() -> Bool {
        // STUB
        return true
    }
}
