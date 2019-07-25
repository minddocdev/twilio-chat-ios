//  Converted to Swift 5 by MindDoc - https://minddoc.de
//
//  TCHUserDescriptorPaginator.swift
//  Twilio Chat Client
//
//  Copyright (c) 2018 Twilio, Inc. All rights reserved.
//

import Foundation

//* The results paginator for user descriptors list requests.

open class TCHUserDescriptorPaginator: NSObject {
    /** The items returned by the requested operation, if any.

     @return The items returned by the requested operation, if any.
     */
    public func items() -> [TCHUserDescriptor] {
        // STUB
        return []
    }

    /** Determine if additional pages are available for the requested operation.

     @return BOOL indicating the presence of a subsequent page of results.
     */
    public func hasNextPage() -> Bool {
        // STUB
        return true
    }

    /** Request the next page of results for the current operation.

     @param completion The paginator completion block.  If no completion block is specified, no operation will be executed.
     */
    public func requestNextPage(with completion: TCHUserDescriptorPaginatorCompletion) {
    }
}
