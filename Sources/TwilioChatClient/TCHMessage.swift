//  Converted to Swift 5 by MindDoc - https://minddoc.de
//
//  TCHMessage.swift
//  Twilio Chat Client
//
//  Copyright (c) 2018 Twilio, Inc. All rights reserved.
//

import Foundation

//* Representation of a Message on a chat channel.
open class TCHMessage: NSObject {
    //* The unique identifier for this message.
    public var sid: String?
    //* Index of Message in the Channel's messages stream.
    public var index: NSNumber?
    //* The identity of the author of the message.
    public var author: String?
    //* The body of the message.
    public var body: String?
    //* The type of the message.
    public var messageType: TCHMessageType!
    //* The media sid if this message has a multimedia attachment, otherwise nil.
    public var mediaSid: String?
    //* The size of the attached media if present, otherwise 0.
    public var mediaSize: UInt = 0
    //* The mime type of the attached media if present and specified at creation, otherwise nil.
    public var mediaType: String?
    //* The suggested filename the attached media if present and specified at creation, otherwise nil.
    public var mediaFilename: String?
    //* The SID of the member this message is sent by.
    public var memberSid: String?
    //* The member this message is sent by.
    public var member: TCHMember?
    //* The creation timestamp of the message.
    public var timestamp: String?
    //* The creation timestamp of the message as an NSDate.
    public var timestampAsDate: Date?
    //* The timestamp the message was last updated.
    public var dateUpdated: String?
    //* The timestamp the message was last updated as an NSDate.
    public var dateUpdatedAsDate: Date?
    //* The identity of the user who last updated the message.
    public var lastUpdatedBy: String?

    /** Update the body of this message

     @param body The new body for this message.
     @param completion Completion block that will specify the result of the operation.
     */
    public func updateBody(_ body: String, completion: TCHCompletion?) {
    }

    /** Return this message's attributes.

     @return The developer-defined extensible attributes for this message.
     */
    public func attributes() -> [String : Any?]? {
        // STUB
        return ["fake": "fake"]
    }

    /** Set this message's attributes.

     @param attributes The new developer-defined extensible attributes for this message. (Supported types are NSString, NSNumber, NSArray, NSDictionary and NSNull)
     @param completion Completion block that will specify the result of the operation.
     */
    public func setAttributes(_ attributes: [String : Any?]?, completion: TCHCompletion?) {
    }

    /** Determine if the message has media content.

     @return A true boolean value if this message has media, false otherwise.
     */
    public func hasMedia() -> Bool {
        // STUB
        return false;
    }

    /** Retrieve this message's attached media, if there is any.

     @param mediaStream An instance of NSOutputStream you create that the media will be written to.
     @param onStarted Callback block which is called when the media download starts.
     @param onProgress Callback block which is called as download progresses with the most recent number of bytes read.
     @param onCompleted Callback block which is called upon media download completion with the media's sid if successful.
     @param completion Completion block that will specify the result of the operation.
     */
    public func getMediaWith(_ mediaStream: OutputStream, onStarted: TCHMediaOnStarted?, onProgress: TCHMediaOnProgress?, onCompleted: TCHMediaOnCompleted?, completion: TCHCompletion?) {
    }
}
