//  Converted to Swift 5 by MindDoc - https://minddoc.de
//
//  TwilioChatClient.swift
//  Twilio Chat Client
//
//  Copyright (c) 2018 Twilio, Inc. All rights reserved.
//

import Foundation

//* Represents a chat client connection to Twilio.
open class TwilioChatClient: NSObject {
    //* Messaging client delegate
    weak var delegate: TwilioChatClientDelegate?
    //* The logged in user in the chat system.
    public var user: TCHUser?
    //* The client's current connection state.
    public var connectionState: TCHClientConnectionState!
    //* The current client synchronization state.
    public var synchronizationStatus: TCHClientSynchronizationStatus!

    /** Sets the logging level for the client. 

     @param logLevel The new log level.
     */
    public class func setLogLevel(_ logLevel: TCHLogLevel) {
    }

    /** The logging level for the client. 

     @return The log level.
     */
    public class func logLevel() -> TCHLogLevel {
        // STUB
        return TCHLogLevel.info
    }

    /** Initialize a new chat client instance.
     
     @param token The client access token to use when communicating with Twilio.
     @param properties The properties to initialize the client with, if this is nil defaults will be used.
     @param delegate Delegate conforming to TwilioChatClientDelegate for chat client lifecycle notifications.
     @param completion Completion block that will specify the result of the operation and a reference to the new TwilioChatClient.
     */
    convenience init(token: String, properties: TwilioChatClientProperties?, delegate: TwilioChatClientDelegate?, completion: TCHTwilioClientCompletion) {
        // STUB
        self.init()
    }
    
    /** Initialize a new chat client instance.

     @param withToken The client access token to use when communicating with Twilio.
     @param properties The properties to initialize the client with, if this is nil defaults will be used.
     @param delegate Delegate conforming to TwilioChatClientDelegate for chat client lifecycle notifications.
     @param completion Completion block that will specify the result of the operation and a reference to the new TwilioChatClient.
     */
    public class func chatClient(withToken: String, properties: TwilioChatClientProperties?, delegate: TwilioChatClientDelegate?, completion: TCHTwilioClientCompletion) {
    }

    /** Returns the name of the SDK for diagnostic purposes.

     @return An identifier for the Chat SDK.
     */
    public class func sdkName() -> String {
        // STUB
        return "fakeSdkName"
    }

    /** Returns the version of the SDK

     @return The chat client version.
     */
    public class func sdkVersion() -> String {
        // STUB
        return "fakeSdkVersion"
    }

    /** Returns the version of the SDK

     @return The chat client version.
     @deprecated Please see the class method sdkVersion.
     */
    public func version() -> String {
        // STUB
        return "fakeVersion"
    }

    /** Updates the access token currently being used by the client.

     @param token The updated client access token to use when communicating with Twilio.
     @param completion Completion block that will specify the result of the operation.
     */
    public func updateToken(_ token: String, completion: TCHCompletion?) {
    }

    /** List of channels available to the current user.

     This will be nil until the client is fully initialized, see the client delegate callback `chatClient:synchronizationStatusUpdated:`

     @return The channelsList object.
     */
    public func channelsList() -> TCHChannels? {
        // STUB
        return nil
    }

    /** Provides access to the TCHUsers class to obtain user descriptors and subscribed users.

     @return The users object.
     */
    public func users() -> TCHUsers? {
        // STUB
        return nil
    }

    /** Register APNS token for push notification updates.

     @param token The APNS token which usually comes from `didRegisterForRemoteNotificationsWithDeviceToken`.
     @param completion Completion block that will specify the result of the operation.
     */
    public func register(withNotificationToken token: Data, completion: TCHCompletion?) {
    }

    /** De-register from push notification updates.

     @param token The APNS token which usually comes from `didRegisterForRemoteNotificationsWithDeviceToken`.
     @param completion Completion block that will specify the result of the operation.
     */
    public func deregister(withNotificationToken token: Data, completion: TCHCompletion?) {
    }

    /** Queue the incoming notification with the messaging library for processing - notifications usually arrive from `didReceiveRemoteNotification`.

     @param notification The incomming notification.
     @param completion Completion block that will specify the result of the operation.
     */
    public func handleNotification(_ notification: [AnyHashable : Any], completion: TCHCompletion?) {
    }

    /** Indicates whether reachability is enabled for this instance.

     @return YES if reachability is enabled.
     */
    public func isReachabilityEnabled() -> Bool {
        // STUB
        return true
    }

    //* Cleanly shut down the messaging subsystem when you are done with it.
    public func shutdown() {
    }
}

// MARK: -

//* Optional chat client initialization properties.
open class TwilioChatClientProperties: NSObject {
    public var region = ""
}

// MARK: -

//* This protocol declares the chat client delegate methods.
public protocol TwilioChatClientDelegate: NSObjectProtocol {
    /** Called when the client connection state changes.

     @param client The chat client.
     @param state The current connection state of the client.
     */
    func chatClient(_ client: TwilioChatClient, connectionStateUpdated state: TCHClientConnectionState)
    /**
     Called when the client's token has expired.

     In response, your delegate should generate a new token and call
     `chatClient:updateToken:completion:` immediately as connection to
     the server has been lost.

     @param client The chat client.
     */
    func chatClientTokenExpired(_ client: TwilioChatClient)
    /**
     Called when the client's token will expire soon.

     In response, your delegate should generate a new token and call
     `chatClient:updateToken:completion:` as soon as possible.

     @param client The chat client.
     */
    func chatClientTokenWillExpire(_ client: TwilioChatClient)
    /** Called when the client synchronization state changes during startup.

     @param client The chat client.
     @param status The current synchronization status of the client.
     */
    func chatClient(_ client: TwilioChatClient, synchronizationStatusUpdated status: TCHClientSynchronizationStatus)
    /** Called when the current user has a channel added to their channel list.

     @param client The chat client.
     @param channel The channel.
     */
    func chatClient(_ client: TwilioChatClient, channelAdded channel: TCHChannel)
    /** Called when one of the current users channels is changed.

     @param client The chat client.
     @param channel The channel.
     @param updated An indication of what changed on the channel.
     */
    func chatClient(_ client: TwilioChatClient, channel: TCHChannel, updated: TCHChannelUpdate)
    /** Called when a channel the current the client is aware of changes synchronization state.

     @param client The chat client.
     @param channel The channel.
     @param status The current synchronization status of the channel.
     */
    func chatClient(_ client: TwilioChatClient, channel: TCHChannel, synchronizationStatusUpdated status: TCHChannelSynchronizationStatus)
    /** Called when one of the current users channels is deleted.

     @param client The chat client.
     @param channel The channel.
     */
    func chatClient(_ client: TwilioChatClient, channelDeleted channel: TCHChannel)
    /** Called when a channel the current user is subscribed to has a new member join.

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
    /** Called when a channel the current user is subscribed to has a member leave.

     @param client The chat client.
     @param channel The channel.
     @param member The member.
     */
    func chatClient(_ client: TwilioChatClient, channel: TCHChannel, memberLeft member: TCHMember)
    /** Called when a channel the current user is subscribed to receives a new message.

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
    /** Called when an error occurs.

     @param client The chat client.
     @param error The error.
     */
    func chatClient(_ client: TwilioChatClient, errorReceived error: TCHError)
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
    /** Called as a result of TwilioChatClient's handleNotification: method being invoked for a new message received notification.  `handleNotification:` parses the push payload and extracts the new message's channel and index for the push notification then calls this delegate method.

     @param client The chat client.
     @param channelSid The channel sid for the new message.
     @param messageIndex The index of the new message.
     */
    func chatClient(_ client: TwilioChatClient, notificationNewMessageReceivedForChannelSid channelSid: String, messageIndex: UInt)
    /** Called as a result of TwilioChatClient's handleNotification: method being invoked for an added to channel notification.  `handleNotification:` parses the push payload and extracts the channel for the push notification then calls this delegate method.

     @param client The chat client.
     @param channelSid The channel sid for the newly added channel.
     */
    func chatClient(_ client: TwilioChatClient, notificationAddedToChannelWithSid channelSid: String)
    /** Called as a result of TwilioChatClient's handleNotification: method being invoked for an invited to channel notification.  `handleNotification:` parses the push payload and extracts the channel for the push notification then calls this delegate method.

     @param client The chat client.
     @param channelSid The channel sid for the newly invited channel.
     */
    func chatClient(_ client: TwilioChatClient, notificationInvitedToChannelWithSid channelSid: String)
    /** Called as a result of TwilioChatClient's handleNotification: method being invoked for a removed from channel notification.  `handleNotification:` parses the push payload and extracts the channel for the push notification then calls this delegate method.

     @param client The chat client.
     @param channelSid The channel sid for the removed channel.
     */
    func chatClient(_ client: TwilioChatClient, notificationRemovedFromChannelWithSid channelSid: String)
    /** Called when a processed push notification has changed the application's badge count.  You should call:

        [[UIApplication currentApplication] setApplicationIconBadgeNumber:badgeCount]

     Please note that badge count indicates the number of 1:1 (2 member only) channels that have unread messages.  This will not reflect total unread message count or channels with more than 2 members.

     To ensure your application's badge updates when the application is in the foreground if Twilio is managing your badge counts.  You may disregard this delegate callback otherwise.

     @param client The chat client.
     @param badgeCount The updated badge count.
     */
    func chatClient(_ client: TwilioChatClient, notificationUpdatedBadgeCount badgeCount: UInt)
    /** Called when the current user's or that of any subscribed channel member's user is updated.

     @param client The chat client.
     @param user The object for changed user.
     @param updated An indication of what changed on the user.
     */
    func chatClient(_ client: TwilioChatClient, user: TCHUser, updated: TCHUserUpdate)
    /** Called when the client subscribes to updates for a given user.

     @param client The chat client.
     @param user The object for subscribed user.
     */
    func chatClient(_ client: TwilioChatClient, userSubscribed user: TCHUser)
    /** Called when the client unsubscribes from updates for a given user.

     @param client The chat client.
     @param user The object for unsubscribed user.
     */
    func chatClient(_ client: TwilioChatClient, userUnsubscribed user: TCHUser)
}
