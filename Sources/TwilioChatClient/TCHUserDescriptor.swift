//  Converted to Swift 5 by MindDoc - https://minddoc.de
//
//  TCHUserDescriptor.swift
//  Twilio Chat Client
//
//  Copyright (c) 2018 Twilio, Inc. All rights reserved.
//

import Foundation

//* A snapshot in time of user information for the current user and other channel members.

open class TCHUserDescriptor: NSObject {
    //* The identity for this user.
    public var identity: String?
    //* The friendly name for this user.
    public var friendlyName: String?

    /**
     Return this user's attributes.

     @return The developer-defined extensible attributes for this user.
     */
    public func attributes() -> [String: Any?]? {
        // STUB
        return ["fake": "fake"]
    }

    /**
     Indicates whether the user is online.
     Note that if TwilioChatClient indicates reachability is not enabled, this will return NO.

     @return YES if the user is online.
     */
    public func isOnline() -> Bool {
        // STUB
        return true
    }

    /**
     Indicates whether the user is notifiable.
     Note that if TwilioChatClient indicates reachability is not enabled, this will return NO.

     @return YES if the user is notifiable.
     */
    public func isNotifiable() -> Bool {
        // STUB
        return true
    }

    /** Subscribe and obtain a full TCHUser object for this user descriptor.

     @param completion Completion block that will specify the result of the operation and the newly subscribed user.
     */
    public func subscribe(with completion: TCHUserCompletion?) {
    }
}
