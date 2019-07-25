//  Converted to Swift 5 by MindDoc - https://minddoc.de
//
//  TCHUsers.swift
//  Twilio Chat Client
//
//  Copyright (c) 2018 Twilio, Inc. All rights reserved.
//

import Foundation

//* Representation of a chat channel's users list.

open class TCHUsers: NSObject {
    /** Obtain a list of user descriptors for the specified channel.

     @param channel The channel to load the user descriptors for.
     @param completion Completion block that will specify the result of the operation and an array of user descriptors.
     */
    public func userDescriptors(for channel: TCHChannel, completion: TCHUserDescriptorPaginatorCompletion) {
    }

    /** Obtain a static snapshot of the user descriptor object for the given identity.

     @param identity The identity of the user to obtain.
     @param completion Completion block that will specify the result of the operation and the user descriptor.
     */
    public func userDescriptor(withIdentity identity: String, completion: TCHUserDescriptorCompletion) {
    }

    /** Obtain a subscribed user object for the given identity.  If no current subscription exists for this user, this will 
     fetch the user and subscribe them.  The least recently used user object will be unsubscribed if you reach your instance's
     user subscription limit.

     @param identity The identity of the user to obtain.
     @param completion Completion block that will specify the result of the operation and the newly subscribed user.
     */
    public func subscribedUser(withIdentity identity: String, completion: TCHUserCompletion) {
    }

    /** Obtain a reference to all currently subscribed users in the system.

     @return An array of subscribed TCHUser objects.
     */
    public func subscribedUsers() -> [TCHUser] {
        // STUB
        return []
    }
}
