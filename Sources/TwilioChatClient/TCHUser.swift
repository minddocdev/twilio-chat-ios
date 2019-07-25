//  Converted to Swift 5 by MindDoc - https://minddoc.de
//
//  TCHUser.swift
//  Twilio Chat Client
//
//  Copyright (c) 2018 Twilio, Inc. All rights reserved.
//

import Foundation

//* User information for the current user and other channel members.

open class TCHUser: NSObject {
    //* The identity for this user.
    public var identity: String?
    //* The friendly name for this user.
    public var friendlyName: String?

    /** Return this user's attributes.

     @return The developer-defined extensible attributes for this user.
     */
    public func attributes() -> [String : Any?]? {
        // STUB
        return ["fake": "fake"]
    }

    /** Set this user's attributes.

     @param attributes The new developer-defined extensible attributes for this user. (Supported types are NSString, NSNumber, NSArray, NSDictionary and NSNull)
     @param completion Completion block that will specify the result of the operation.
     */
    public func setAttributes(_ attributes: [String : Any?]?, completion: TCHCompletion?) {
    }

    /** Set this user's friendly name.

     @param friendlyName The new friendly name for this user.
     @param completion Completion block that will specify the result of the operation.
     */
    public func setFriendlyName(_ friendlyName: String?, completion: TCHCompletion?) {
    }

    /** Indicates whether the user is online.  Note that if TwilioChatClient indicates reachability is not enabled, this will return NO.

     @return YES if the user is online.
     */
    public func isOnline() -> Bool {
        // STUB
        return true
    }

    /** Indicates whether the user is notifiable.  Note that if TwilioChatClient indicates reachability is not enabled, this will return NO.

     @return YES if the user is notifiable.
     */
    public func isNotifiable() -> Bool {
        // STUB
        return true
    }

    /** Indicates if the User is currently subscribed.  User objects which are no longer subscribed will not receive updates and will return nil or Unavailable for their values.

     @return YES if the user object is subscribed.
     */
    public func isSubscribed() -> Bool {
        // STUB
        return true
    }

    /** Manually unsubscribes this user object.  It will no longer receive updates from the Chat backend. 
     */
    public func unsubscribe() {
    }
}
