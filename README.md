# simple-mobile-app

Two tiny native apps:

- Android: `android/HelloWorldAndroid` (Kotlin, View + Button)
- iOS: `ios/HelloWorldIOS` (SwiftUI + Button)

CI runs:

- Android Robolectric test + Jacoco coverage report
- iOS XCUITest + xccov coverage report

Maestro flows live in `.maestro/` (see `.maestro/README.md`).

Quick local runs:

- Android: `./scripts/maestro-android.sh`
- iOS: `./scripts/maestro-ios.sh`

Coverage (local):

- Android: `cd android/HelloWorldAndroid && ./gradlew testDebugUnitTest jacocoTestReport` (HTML report under `app/build/reports/jacoco/jacocoTestReport/html`)
- iOS: run `xcodebuild test -enableCodeCoverage YES ... -resultBundlePath <path>.xcresult` then `xcrun xccov view --report <path>.xcresult`
