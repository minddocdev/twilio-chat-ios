//  Converted to Swift 5 by MindDoc - https://minddoc.de
//
//  TCHChannel.swift
//  Twilio Chat Client
//
//  Copyright (c) 2018 Twilio, Inc. All rights reserved.
//

import Foundation

//* Representation of a chat channel.
open class TCHChannel: NSObject {
    //* Optional channel delegate.
    //* Upon setting the delegate, you will receive the current channel synchronization status by delegate method.
    public weak var delegate: TCHChannelDelegate?
    //* The unique identifier for this channel.
    public var sid: String?
    //* The friendly name for this channel.
    public var friendlyName: String?
    //* The unique name for this channel.
    public var uniqueName: String?
    //* The messages list object for this channel.
    public var messages: TCHMessages?
    //* The members list object for this channel.
    public var members: TCHMembers?
    //* The channel's synchronization status.
    public var synchronizationStatus: TCHChannelSynchronizationStatus!
    //* The current user's status on this channel.
    public var status: TCHChannelStatus!
    /** The current user's notification level on this channel. This property reflects whether the
     user will receive push notifications for activity on this channel.*/
    public var notificationLevel: TCHChannelNotificationLevel!
    //* The channel's visibility type.
    public var type: TCHChannelType!
    //* The timestamp the channel was created.
    public var dateCreated: String?
    //* The timestamp the channel was created as an NSDate.
    public var dateCreatedAsDate: Date?
    //* The identity of the channel's creator.
    public var createdBy: String?
    //* The timestamp the channel was last updated.
    public var dateUpdated: String?
    //* The timestamp the channel was last updated as an NSDate.
    public var dateUpdatedAsDate: Date?
    //* The timestamp of the channel's most recent message.
    public var lastMessageDate: Date?
    //* The index of the channel's most recent message.
    public var lastMessageIndex: NSNumber?

    /**
     Return this channel's attributes.

     @return The developer-defined extensible attributes for this channel.
     */
    public func attributes() -> [String: Any?]? {
        // STUB
        return ["fake": "fake"]
    }

    /**
     Set this channel's attributes.

     @param attributes The new developer-defined extensible attributes for this channel.
     (Supported types are NSString, NSNumber, NSArray, NSDictionary and NSNull)
     @param completion Completion block that will specify the result of the operation.
     */
    public func setAttributes(_ attributes: [String: Any?]?, completion: TCHCompletion?) {
    }

    /**
     Set this channel's friendly name.

     @param friendlyName The new friendly name for this channel.
     @param completion Completion block that will specify the result of the operation.
     */
    public func setFriendlyName(_ friendlyName: String?, completion: TCHCompletion?) {
    }

    /**
     Set this channel's unique name.

     @param uniqueName The new unique name for this channel.
     @param completion Completion block that will specify the result of the operation.
     */
    public func setUniqueName(_ uniqueName: String?, completion: TCHCompletion?) {
    }

    /**
     Set the user's notification level for the channel.  This property determines whether the
     user will receive push notifications for activity on this channel.

     @param notificationLevel The new notification level for the current user on this channel.
     @param completion Completion block that will specify the result of the operation.
     */
    public func setNotificationLevel(_ notificationLevel: TCHChannelNotificationLevel, completion: TCHCompletion?) {
    }

    /**
     Join the current user to this channel.

     @param completion Completion block that will specify the result of the operation.
     */
    public func join(with completion: TCHCompletion?) {
    }

    /**
     Decline an invitation to this channel.

     @param completion Completion block that will specify the result of the operation.
     */
    public func declineInvitation(with completion: TCHCompletion?) {
    }

    /**
     Leave the current channel.

     @param completion Completion block that will specify the result of the operation.
     */
    public func leave(with completion: TCHCompletion?) {
    }

    /**
     Destroy the current channel, removing all of its members.

     @param completion Completion block that will specify the result of the operation.
     */
    public func destroy(with completion: TCHCompletion?) {
    }

    //* Indicates to other users and the backend that the user is typing a message to this channel.
    public func typing() {
    }

    /**
     Fetch the member object for the given identity if it exists.

     @param identity The username to fetch.
     @return The TCHMember object, if one exists for the username for this channel.
     */
    public func member(withIdentity identity: String) -> TCHMember? {
        // STUB
        return nil
    }

    /**
     Fetch the number of unconsumed messages on this channel for the current user.

     Available even if the channel is not yet synchronized.  Subsequent calls of this
     method prior to the local cache's expiry will return cached values.

     @param completion Completion block that will specify the requested count.
     If no completion block is specified, no operation will be executed.
     */
    public func getUnconsumedMessagesCount(with completion: TCHCountCompletion) {
    }

    /**
     Fetch the number of messages on this channel.

     Available even if the channel is not yet synchronized.

     Available even if the channel is not yet synchronized.  Subsequent calls of this
     method prior to the local cache's expiry will return cached values.

     @param completion Completion block that will specify the requested count.
     If no completion block is specified, no operation will be executed.
     */
    public func getMessagesCount(with completion: TCHCountCompletion) {
    }

    /** Fetch the number of members on this channel.

     Available even if the channel is not yet synchronized.

     Available even if the channel is not yet synchronized.  Subsequent calls of this
     method prior to the local cache's expiry will return cached values.

     @param completion Completion block that will specify the requested count.
     If no completion block is specified, no operation will be executed.
     */
    public func getMembersCount(with completion: TCHCountCompletion) {
    }
}

//* This protocol declares the channel delegate methods.
public protocol TCHChannelDelegate: NSObjectProtocol {
    /** Called when this channel is changed.

     @param client The chat client.
     @param channel The channel.
     @param updated An indication of what changed on the channel.
    */
    func chatClient(_ client: TwilioChatClient, channel: TCHChannel, updated: TCHChannelUpdate)
    /** Called when this channel is deleted.

     @param client The chat client.
     @param channel The channel.
     */
    func chatClient(_ client: TwilioChatClient, channelDeleted channel: TCHChannel)
    /** Called when a channel the current the client is aware of changes synchronization state.

     @param client The chat client.
     @param channel The channel.
     @param status The current synchronization status of the channel.
     */
    func chatClient(_ client: TwilioChatClient, channel: TCHChannel,
                    synchronizationStatusUpdated status: TCHChannelSynchronizationStatus)
    /** Called when this channel has a new member join.

     @param client The chat client.
     @param channel The channel.
     @param member The member.
     */
    func chatClient(_ client: TwilioChatClient, channel: TCHChannel, memberJoined member: TCHMember)
    /** Called when a channel the current user is subscribed to has a member modified.

     @param client The chat client.
     @param channel The channel.
     @param member The member.
     @param updated An indication of what changed on the member.
     */
    func chatClient(_ client: TwilioChatClient, channel: TCHChannel, member: TCHMember, updated: TCHMemberUpdate)
    /** Called when this channel has a member leave.

     @param client The chat client.
     @param channel The channel.
     @param member The member.
     */
    func chatClient(_ client: TwilioChatClient, channel: TCHChannel, memberLeft member: TCHMember)
    /** Called when this channel receives a new message.

     @param client The chat client.
     @param channel The channel.
     @param message The message.
     */
    func chatClient(_ client: TwilioChatClient, channel: TCHChannel, messageAdded message: TCHMessage)
    /** Called when a message on a channel the current user is subscribed to is modified.

     @param client The chat client.
     @param channel The channel.
     @param message The message.
     @param updated An indication of what changed on the message.
     */
    func chatClient(_ client: TwilioChatClient, channel: TCHChannel, message: TCHMessage, updated: TCHMessageUpdate)
    /** Called when a message on a channel the current user is subscribed to is deleted.

     @param client The chat client.
     @param channel The channel.
     @param message The message.
     */
    func chatClient(_ client: TwilioChatClient, channel: TCHChannel, messageDeleted message: TCHMessage)
    /** Called when a member of a channel starts typing.

     @param client The chat client.
     @param channel The channel.
     @param member The member.
     */
    func chatClient(_ client: TwilioChatClient, typingStartedOn channel: TCHChannel, member: TCHMember)
    /** Called when a member of a channel ends typing.

     @param client The chat client.
     @param channel The channel.
     @param member The member.
     */
    func chatClient(_ client: TwilioChatClient, typingEndedOn channel: TCHChannel, member: TCHMember)
    /** Called when this channel has a member's user updated.

     @param client The chat client.
     @param channel The channel.
     @param member The member.
     @param user The object for changed user.
     @param updated An indication of what changed on the user.
     */
    func chatClient(_ client: TwilioChatClient, channel: TCHChannel,
                    member: TCHMember, user: TCHUser, updated: TCHUserUpdate)
    /** Called when the user associated with a member of this channel is subscribed to.

     @param client The chat client.
     @param channel The channel.
     @param member The member.
     @param user The object for subscribed user.
     */
    func chatClient(_ client: TwilioChatClient, channel: TCHChannel, member: TCHMember, userSubscribed user: TCHUser)
    /** Called when the user associated with a member of this channel is unsubscribed from.

     @param client The chat client.
     @param channel The channel.
     @param member The member.
     @param user The object for unsubscribed user.
     */
    func chatClient(_ client: TwilioChatClient, channel: TCHChannel, member: TCHMember, userUnsubscribed user: TCHUser)
}
