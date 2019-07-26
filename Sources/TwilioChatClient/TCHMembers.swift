//  Converted to Swift 5 by MindDoc - https://minddoc.de
//
//  TCHMembers.swift
//  Twilio Chat Client
//
//  Copyright (c) 2018 Twilio, Inc. All rights reserved.
//

import Foundation

//* Representation of a chat channel's membership list.

open class TCHMembers: NSObject {
    /** Obtain the members of this channel.

     @param completion Completion block that will specify the result of the
     operation and a reference to the first page of members for this channel.
     If no completion block is specified, no operation will be executed.
     */
    public func members(with completion: TCHMemberPaginatorCompletion) {
    }

    /** Add specified username to this channel without inviting.

     @param identity The username to add to this channel.
     @param completion Completion block that will specify the result of the operation.
     */
    public func add(byIdentity identity: String, completion: TCHCompletion?) {
    }

    /** Invite specified username to this channel.

     @param identity The username to invite to this channel.
     @param completion Completion block that will specify the result of the operation.
     */
    public func invite(byIdentity identity: String, completion: TCHCompletion?) {
    }

    /** Remove specified username from this channel.

     @param member The member to remove from this channel.
     @param completion Completion block that will specify the result of the operation.
     */
    public func remove(_ member: TCHMember, completion: TCHCompletion?) {
    }
}
