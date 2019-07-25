# twilio-chat-ios

[Twilio chat iOS library](https://github.com/twilio/twilio-chat-ios) fully stubbed for SPM integrations.

- [API Reference > iOS Client SDK](https://media.twiliocdn.com/sdk/ios/chat/releases/2.4.8/docs/index.html)
- [Getting started > iOS Quickstart](https://www.twilio.com/docs/chat/ios/quickstart)
- [Tutorials > Chat with iOS and Swift](https://www.twilio.com/docs/chat/tutorials/chat-application-ios-swift)

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
