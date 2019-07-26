# twilio-chat-ios

[![CircleCI](https://circleci.com/gh/minddocdev/twilio-chat-ios/tree/master.svg?style=svg)](https://circleci.com/gh/minddocdev/twilio-chat-ios/tree/master)

[Twilio chat iOS library](https://github.com/twilio/twilio-chat-ios) fully stubbed for SPM integrations.

- [API Reference > iOS Client SDK](https://media.twiliocdn.com/sdk/ios/chat/releases/2.4.8/docs/index.html)
- [Getting started > iOS Quickstart](https://www.twilio.com/docs/chat/ios/quickstart)
- [Tutorials > Chat with iOS and Swift](https://www.twilio.com/docs/chat/tutorials/chat-application-ios-swift)

## Why?

In order to be able to run tests also on Linux systems, we abstract Swift code in SPMs as much as possible, that can be used by our iOS applications. The iOS application will have the real Twilio dependency (via Cocoapods), and the tests are run isolated in the Twilio Chat SPM package, which loads this SPM dependency.

Objective-C bridges and umbrella headers did not work as expected in this kind of integration, therefore we decided to transform those headers into swift files without implementing any logic and stubbing function returns.

## Versions

Versions are linked via git tags.

- 2.5.0


## Twilio Chat iOS Carthage Dependency

Dependencies are transformed into Swift 5.0 files from Twilio's Carthage headers.

### Generate binaries with Carthage

Twilio defines a Carthage dependency though, that can be set
up in Xcode with a few hacks, following the
[using Swift package manager with Carthage guide](https://fuller.li/posts/using-swift-package-manager-with-carthage/).

In order to generate the dependency binaries that this project uses to create the Swift files, carthage needs to be installed.

```sh
brew install carthage
```

Then, checkout the Twilio repository

```sh
carthage update
```

Now, a `Carthage` folder should have been created (that won't be pushed to the repository), with a `Checkouts` subfolder.

To generate the `TwilioChatClient` real binaries:

```sh
carthage build
```

This will have generated a `Builds` subfolder.
You can now check the Objective C headers for the Twilio library in `Carthage/Builds/iOS/TwilioChatClient.framework/Headers`.
