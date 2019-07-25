//  Converted to Swift 5 by MindDoc - https://minddoc.de
//
//  TCHMember.swift
//  Twilio Chat Client
//
//  Copyright (c) 2018 Twilio, Inc. All rights reserved.
//

import Foundation

//* Representation of a Member on a chat channel.

open class TCHMember: NSObject {
    //* The unique identifier for this member.
    public var sid: String?
    //* The identity for this member.
    public var identity: String?
    //* Index of the last Message the Member has consumed in this Channel.
    public var lastConsumedMessageIndex: NSNumber?
    //* Timestamp the last consumption updated for the Member in this Channel.
    public var lastConsumptionTimestamp: String?
    //* Timestamp the last consumption updated for the Member in this Channel as an NSDate.
    public var lastConsumptionTimestampAsDate: Date?

    /** Return this member's attributes.

     @return The developer-defined extensible attributes for this member.
     */
    public func attributes() -> [String : Any?]? {
        // STUB
        return ["fake": "fake"]
    }

    /** Set this member's attributes.

     @param attributes The new developer-defined extensible attributes for this member. (Supported types are NSString, NSNumber, NSArray, NSDictionary and NSNull)
     @param completion Completion block that will specify the result of the operation.
     */
    public func setAttributes(_ attributes: [String : Any?]?, completion: TCHCompletion?) {
    }

    /** Obtain a static snapshot of the user descriptor object for this member.

     @param completion Completion block that will specify the result of the operation and the user descriptor.
     */
    public func userDescriptor(with completion: TCHUserDescriptorCompletion) {
    }

    /** Obtain a subscribed user object for the member.  If no current subscription exists for this user, this will
     fetch the user and subscribe them.  The least recently used user object will be unsubscribed if you reach your instance's
     user subscription limit.

     @param completion Completion block that will specify the result of the operation and the newly subscribed user.
     */
    public func subscribedUser(with completion: TCHUserCompletion) {
    }
}
