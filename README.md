# simple-mobile-app

Two tiny native apps:

- Android: `android/HelloWorldAndroid` (Kotlin, View + Button)
- iOS: `ios/HelloWorldIOS` (SwiftUI + Button)

CI runs:

- Android Robolectric test to verify the `"Hello World"` label is shown and changes after a button tap
- iOS XCUITest to verify the `"Hello World"` label is shown and changes after a button tap

Maestro flows live in `.maestro/` (see `.maestro/README.md`).

Quick local runs:

- Android: `./scripts/maestro-android.sh`
- iOS: `./scripts/maestro-ios.sh`
