import XCTest
@testable import TwilioChatClient

final class TwilioChatClientTests: XCTestCase {
    func testChatClientSDKProps() {
        XCTAssertTrue(TwilioChatClient.sdkName().elementsEqual("fakeSdkName"))
        XCTAssertTrue(TwilioChatClient.sdkVersion().elementsEqual("fakeSdkVersion"))
    }

    static var allTests = [
        ("testChatClientSDKProps", testChatClientSDKProps),
    ]
}
