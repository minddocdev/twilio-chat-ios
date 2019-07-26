//  Converted to Swift 5 by MindDoc - https://minddoc.de
//
//  TCHMessages.swift
//  Twilio Chat Client
//
//  Copyright (c) 2018 Twilio, Inc. All rights reserved.
//

import Foundation

//* Representation of a chat channel's message list.

open class TCHMessages: NSObject {
    //* Index of the last Message the User has consumed in this Channel.
    public var lastConsumedMessageIndex: NSNumber?

    /**
     Sends a message to the channel.

     @param options Message options.
     @param completion Completion block that will specify the result of
     the operation and a reference to the new message.
     */
    public func sendMessage(with options: TCHMessageOptions, completion: TCHMessageCompletion?) {
    }

    /** Removes the specified message from the channel.

     @param message The message to remove.
     @param completion Completion block that will specify the result of the operation.
     */
    public func remove(_ message: TCHMessage, completion: TCHCompletion?) {
    }

    /**
     Fetches the most recent `count` messages.  This will return locally cached messages
     if they are all available or may require a load from the server.

     @param count The number of most recent messages to return.
     @param completion Completion block that will specify the result of the operation as well
     as the requested messages if successful.
     If no completion block is specified, no operation will be executed.
     */
    public func getLastWithCount(_ count: UInt, completion: TCHMessagesCompletion) {
    }

    /**
     Fetches at most `count` messages including and prior to the specified `index`.
     This will return locally cached messages if they are all available or may require a load from the server.

     @param index The starting point for the request.
     @param count The number of preceeding messages to return.
     @param completion Completion block that will specify the result of the operation as well
     as the requested messages if successful.
     If no completion block is specified, no operation will be executed.
     */
    public func getBefore(_ index: UInt, withCount count: UInt, completion: TCHMessagesCompletion) {
    }

    /**
     Fetches at most `count` messages inclulding and subsequent to the specified `index`.
     This will return locally cached messages if they are all available or may require
     a load from the server.

     @param index The starting point for the request.
     @param count The number of succeeding messages to return.
     @param completion Completion block that will specify the result of the operation as well as
     the requested messages if successful.  If no completion block is specified,
     no operation will be executed.
     */
    public func getAfter(_ index: UInt, withCount count: UInt, completion: TCHMessagesCompletion) {
    }

    /**
     Returns the message with the specified index.

     @param index The index of the message.
     @param completion Completion block that will specify the result of the operation as well as
     the requested message if successful.  If no completion block is specified, no operation will be executed.
     */
    public func message(withIndex index: NSNumber, completion: TCHMessageCompletion) {
    }

    /**
     Returns the oldest message starting at index.  If the message at index exists,
     it will be returned otherwise the next oldest message that presently exists will be returned.

     @param index The index of the last message reported as read (may refer to a deleted message).
     @param completion Completion block that will specify the result of the operation as well as
     the requested message if successful.  If no completion block is specified, no operation will be executed.
     */
    public func message(forConsumptionIndex index: NSNumber, completion: TCHMessageCompletion) {
    }

    /**
     Set the last consumed index for this Member and Channel.
     Allows you to set any value, including smaller than the current index.

     @param index The new index.
     @deprecated See setLastConsumedMessageIndex:completion:
     */
    public func setLastConsumedMessageIndex(_ index: NSNumber) {
    }

    /**
     Set the last consumed index for this Member and Channel.
     Allows you to set any value, including smaller than the current index.

     @param index The new index.
     @param completion Optional completion block that will specify the result of the operation
     and an updated unconsumed message count for the user on this channel.
     */
    public func setLastConsumedMessageIndex(_ index: NSNumber, completion: TCHCountCompletion?) {
    }

    /**
     Update the last consumed index for this Member and Channel.
     Only update the index if the value specified is larger than the previous value.

     @param index The new index.
     @deprecated See advanceLastConsumedMessageIndex:completion:
     */
    public func advanceLastConsumedMessageIndex(_ index: NSNumber) {
    }

    /**
     Update the last consumed index for this Member and Channel.
     Only update the index if the value specified is larger than the previous value.

     @param index The new index.
     @param completion Optional completion block that will specify the result of the
     operation and an updated unconsumed message count for the user on this channel.
     */
    public func advanceLastConsumedMessageIndex(_ index: NSNumber, completion: TCHCountCompletion?) {
    }

    /**
     Update the last consumed index for this Member and Channel to the max message currently on this device.

     @deprecated See setAllMessagesConsumed:completion:
     */
    public func setAllMessagesConsumed() {
    }

    /**
     Update the last consumed index for this Member and Channel to the max message currently on this device.

     @param completion Optional completion block that will specify the result of the
     operation and an updated unconsumed message count for the user on this channel.
     */
    public func setAllMessagesConsumedWithCompletion(_ completion: TCHCountCompletion?) {
    }

    /**
     Reset the last consumed index for this Member and Channel to no messages consumed.

     @deprecated See setNoMessagesConsumed:completion:
     */
    public func setNoMessagesConsumed() {
    }

    /**
     Reset the last consumed index for this Member and Channel to no messages consumed.

     @param completion Optional completion block that will specify the result of the
     operation and an updated unconsumed message count for the user on this channel.
     */
    public func setNoMessagesConsumedWithCompletion(_ completion: TCHCountCompletion?) {
    }
}
