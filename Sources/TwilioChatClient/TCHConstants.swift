//  Converted to Swift 5 by MindDoc - https://minddoc.de
//
//  TCHConstants.swift
//  Twilio Chat Client
//
//  Copyright (c) 2018 Twilio, Inc. All rights reserved.
//

import Foundation

//* Client connection state.
@objc public enum TCHClientConnectionState : Int {
    case unknown ///< Client connection state is not yet known.
    case disconnected ///< Client is offline and no connection attempt in process.
    case connected ///< Client is online and ready.
    case connecting ///< Client is offline and connection attempt is in process.
    case denied ///< Client connection is denied because of invalid token.
    case error ///< Client connection is in the erroneous state.
}

//* The synchronization status of the client.
@objc public enum TCHClientSynchronizationStatus : Int {
    case started = 0 ///< Client synchronization has started.
    case channelsListCompleted ///< Channels list is available.
    case completed ///< All joined channels, their members and the requested number of messages are synchronized.
    case failed ///< Synchronization failed.
}

//* Enumeration indicating the client's logging level.
@objc public enum TCHLogLevel : Int {
    case silent = 0 ///< Show no errors.
    case fatal ///< Show fatal errors only.
    case critical ///< Show critical log messages as well as all Fatal log messages.
    case warning ///< Show warnings as well as all Critical log messages.
    case info ///< Show informational messages as well as all Warning log messages.
    case debug ///< Show low-level debugging messages as well as all Info log messages.
    case trace ///< Show low-level tracing messages as well as all Debug log messages.
}

//* Enumeration indicating the updates made to the TCHChannel object.
@objc public enum TCHChannelUpdate : Int {
    case status = 1 ///< The user's status on this channel changed.
    case lastConsumedMessageIndex ///< The user's last consumed message index on this channel changed.
    case uniqueName ///< The channel's unique name changed.
    case friendlyName ///< The channel's friendly name changed.
    case attributes ///< The channel's attributes changed.
    case lastMessage ///< The channel's last message changed.
    case userNotificationLevel ///< The channel's user notification level changed.
}

//* Enumeration indicating the channel's current synchronization status with the server.
@objc public enum TCHChannelSynchronizationStatus : Int {
    case none = 0 ///< Channel not ready yet, local object only.
    case identifier ///< Channel SID is available.
    case metadata ///< Channel SID, Friendly Name, Attributes and Unique Name are available.
    case all ///< Channels, Members and Messages collections are ready to use.
    case failed ///< Channel synchronization failed.
}

//* Enumeration indicating the user's current status on a given channel.
@objc public enum TCHChannelStatus : Int {
    case invited = 0 ///< User is invited to the channel but not joined.
    case joined ///< User is joined to the channel.
    case notParticipating ///< User is not participating on this channel.
    case unknown ///< User's status on this channel is not known, used on instances of TCHChannelDescriptor.
}

//* Enumeration indicating the channel's visibility.
@objc public enum TCHChannelType : Int {
    case `public` = 0 ///< Channel is publicly visible
    case `private` ///< Channel is private and only visible to invited members.
}

//* Enumeration indicating the user's notification level on a channel.
@objc public enum TCHChannelNotificationLevel : Int {
    case `default` = 0 ///< User will receive notifications for the channel if joined, nothing if unjoined.
    case muted ///< User will not receive notifications for the channel.
}

//* Enumeration specifying the desired channel sorting criteria.
@objc public enum TCHChannelSortingCriteria : Int {
    case lastMessage = 0 ///< Order by most recent message.
    case friendlyName ///< Order by channel friendly name, case sensitive.
    case uniqueName ///< Order by channel unique name, case sensitive.
}

//* Enumeration specifying the desired channel sorting order.
@objc public enum TCHChannelSortingOrder : Int {
    case ascending = 0 ///< Results will be in ascending order.
    case descending ///< Results will be in descending order.
}

//* Enumeration indicating the updates made to the TCHUser object.
@objc public enum TCHUserUpdate : Int {
    case friendlyName = 0 ///< The friendly name changed.
    case attributes ///< The attributes changed.
    case reachabilityOnline ///< The user's online status changed.
    case reachabilityNotifiable ///< The user's notifiability status changed.
}

//* Enumeration indicating the updates made to the TCHMember object.
@objc public enum TCHMemberUpdate : Int {
    case lastConsumedMessageIndex = 0 ///< The member's last consumed message index changed.
    case attributes ///< The member's attributes changed.
}

//* Enumeration indicating the updates made to the TCHMessage object.
@objc public enum TCHMessageUpdate : Int {
    case body = 0 ///< The message's body changed.
    case attributes ///< The message's attributes changed.
}

//* Enumeration indicating the type of message - text or media.
@objc public enum TCHMessageType : Int {
    case text = 0 ///< This message is a text message, containing a body.
    case media ///< This message is a media message with a media attachment.
}

/** Completion block which will indicate the TCHResult of the operation.

 @param result The result of the operation.
 */
public typealias TCHCompletion = (TCHResult) -> Void
/** Completion block which will indicate the TCHResult of the operation and your handle to the TwilioChatClient instance.

 @param result The result of the operation.
 @param chatClient The newly created chat client which you should create a strong reference to.
 */
public typealias TCHTwilioClientCompletion = (TCHResult, TwilioChatClient?) -> Void
/** Completion block which will indicate the TCHResult of the operation and a public channels paginator.

 @param result The result of the operation.
 @param paginator The paged channel results, see also TCHChannelDescriptorPaginator.
 */
public typealias TCHChannelDescriptorPaginatorCompletion = (TCHResult, TCHChannelDescriptorPaginator?) -> Void
/** Completion block which will indicate the TCHResult of the operation and a channel members paginator.

 @param result The result of the operation.
 @param paginator The paged member results, see also TCHMemberPaginator.
 */
public typealias TCHMemberPaginatorCompletion = (TCHResult, TCHMemberPaginator?) -> Void
/** Completion block which will indicate the TCHResult of the operation and a channel.

 @param result The result of the operation.
 @param channel The channel returned by the operation.
 */
public typealias TCHChannelCompletion = (TCHResult, TCHChannel?) -> Void
/** Completion block which will indicate the TCHResult of the operation and a message.

 @param result The result of the operation.
 @param message The message returned by the operation.
 */
public typealias TCHMessageCompletion = (TCHResult, TCHMessage?) -> Void
/** Completion block which will indicate the TCHResult of the operation and a list of messages.

 @param result The result of the operation.
 @param messages An array of messages returned by the operation.
 */
public typealias TCHMessagesCompletion = (TCHResult, [TCHMessage]?) -> Void
/** Completion block which will indicate the TCHResult of the operation and a user.

 @param result The result of the operation.
 @param user The user returned by the operation.
 */
public typealias TCHUserCompletion = (TCHResult, TCHUser?) -> Void
/** Completion block which will indicate the TCHResult of the operation and a user.

 @param result The result of the operation.
 @param user The user descriptor returned by the operation.
 */
public typealias TCHUserDescriptorCompletion = (TCHResult, TCHUserDescriptor?) -> Void
/** Completion block which will indicate the TCHResult of the operation and a public channels paginator.

 @param result The result of the operation.
 @param paginator The paged user descriptor results, see also TCHMemberPaginator.
 */
public typealias TCHUserDescriptorPaginatorCompletion = (TCHResult, TCHUserDescriptorPaginator?) -> Void
/** Completion block which will provide the requested count.

 @param result The result of the operation.
 @param count The requested count, provided the operation completed successfully.
 */
public typealias TCHCountCompletion = (TCHResult, Int) -> Void
/** Block called upon start of the media operation.
 */
public typealias TCHMediaOnStarted = () -> Void
/** Block called with progress on the media operation.

 @param bytes The total number of bytes read or written so far by the operation.
 */
public typealias TCHMediaOnProgress = (Int) -> Void
/** Block called upon successful completion of the operation with the media's sid.

 @param mediaSid The media's sid.
 */
public typealias TCHMediaOnCompleted = (String) -> Void
//* Channel creation options key for setting friendly name.
public let TCHChannelOptionFriendlyName = ""
//* Channel creation options key for setting unqiue name.
public let TCHChannelOptionUniqueName = ""
//* Channel creation options key for setting type.  Expected values are @(TCHChannelTypePublic) or @(TCHChannelTypePrivate)
public let TCHChannelOptionType = ""
//* Channel creation options key for setting attributes.  Expected value is an NSDictionary*
public let TCHChannelOptionAttributes = ""
//* The Twilio Chat error domain used as NSError's `domain`.
public let TCHErrorDomain = ""
//* The errorCode specified when an error client side occurs without another specific error code.
public let TCHErrorGeneric = 0
//* The userInfo key for the error message, if any.
public let TCHErrorMsgKey = ""
