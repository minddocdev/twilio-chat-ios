//  Converted to Swift 5 by MindDoc - https://minddoc.de
//
//  TCHChannelDescriptor.swift
//  Twilio Chat Client
//
//  Copyright (c) 2018 Twilio, Inc. All rights reserved.
//

import Foundation

//* A snaphshot of a publicly available channel.
//* The data and counts on this object are not updated beyond initial fetch so should not be cached long term.

open class TCHChannelDescriptor: NSObject {
    //* The unique identifier for this channel.
    public var sid: String?
    //* The friendly name for this channel.
    public var friendlyName: String?
    //* The unique name for this channel.
    public var uniqueName: String?
    //* The timestamp the channel was created as an NSDate.
    public var dateCreated: Date?
    //* The identity of the channel's creator.
    public var createdBy: String?
    //* The timestamp the channel was last updated as an NSDate.
    public var dateUpdated: Date?

    /** Return this channel's attributes.

     @return The developer-defined extensible attributes for this channel.
     */
    public func attributes() -> [String: Any?]? {
        // STUB
        return ["fake": "fake"]
    }

    /** The number of messages on this channel.

     @return The requested count.
     */
    public func messagesCount() -> UInt {
        // STUB
        return 0
    }

    /** The number of members on this channel.

     @return The requested count.
     */
    public func membersCount() -> UInt {
        // STUB
        return 0
    }

    /** Obtains the full channel object for this channel descriptor.

     @param completion Completion block that will specify the result of the operation and a reference to the channel.
     */
    public func channel(with completion: TCHChannelCompletion) {
    }
}
