//  Converted to Swift 5 by MindDoc - https://minddoc.de
//
//  TCHMessageOptions.swift
//  Twilio Chat Client
//
//  Copyright (c) 2018 Twilio, Inc. All rights reserved.
//

import Foundation

//* Creation options for new messages within Programmable Chat

open class TCHMessageOptions: NSObject {
    /** Sets body for the new message to be created.

     Note: Specifying both body and media will result in the body being ignored at the present time, replacing it with the media place-holder defined on your instance.

     @param body The new message body.
     @return A referece to this options object for convenience in chaining.
     */
    public func withBody(_ body: String) -> Self {
        // STUB
        return self
    }

    /** Supplies a media upload for the message to be created.

     Note: Specifying both body and media will result in the body being ignored at the present time, replacing it with the media place-holder defined on your instance.

     @param mediaStream An NSInputStream that will be used as the source for the new media message.
     @param contentType The mime type of the attached media.
     @param defaultFilename An optional recommended default filename clients may use when downloading the file.
     @param onStarted Callback block which is called when the media upload starts.
     @param onProgress Callback block which is called as upload progresses with the most recent number of bytes written.
     @param onCompleted Callback block which is called upon media upload completion with the media's sid if successful.
     @return A reference to this options object for convenience in chaining.
     */
    public func withMediaStream(_ mediaStream: InputStream, contentType: String, defaultFilename: String?, onStarted: TCHMediaOnStarted?, onProgress: TCHMediaOnProgress?, onCompleted: TCHMediaOnCompleted?) -> Self {
        // STUB
        return self
    }

    /** Sets user defined attributes for the new message.

     @param attributes The new developer-defined extensible attributes for this message. (Supported types are NSString, NSNumber, NSArray, NSDictionary and NSNull)
     @param completion A completion block which will indicate the success or failure of setting the attributes.
     @return A reference to this options object for convenience in chaining or nil in the event the attributes could not be parsed/updated.
     */
    public func withAttributes(_ attributes: [String : Any?], completion: TCHCompletion?) -> Self? {
        // STUB
        return nil
    }
}
