//  Converted to Swift 5 by MindDoc - https://minddoc.de
//
//  TCHMemberPaginator.swift
//  Twilio Chat Client
//
//  Copyright (c) 2018 Twilio, Inc. All rights reserved.
//

import Foundation

//* The results paginator for members list requests.

open class TCHMemberPaginator: NSObject {
    /** The items returned by the requested operation, if any.

     @return The items returned by the requested operation, if any.
     */
    public func items() -> [TCHMember] {
        // STUB
        return []
    }

    /** Determine if additional pages are available for the requested operation.

     @return BOOL indicating the presence of a subsequent page of results.
     */
    public func hasNextPage() -> Bool {
        // STUB
        return false
    }

    /** Request the next page of results for the current operation.

     @param completion The paginator completion block.
     If no completion block is specified, no operation will be executed.
     */
    public func requestNextPage(with completion: TCHMemberPaginatorCompletion) {
    }
}
