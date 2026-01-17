# Maestro tests

This repo includes simple Maestro E2E flows for both apps:

- Shared steps: `.maestro/flows/hello-world.yaml`
- Android wrapper (appId): `.maestro/android/hello-world.yaml`
- iOS wrapper (appId): `.maestro/ios/hello-world.yaml`
- Flutter wrappers (appId):
  - Android: `.maestro/flutter/android/hello-world.yaml`
  - iOS: `.maestro/flutter/ios/hello-world.yaml`

## Run locally

Prereqs:

- Install Maestro: https://maestro.mobile.dev/
- Build + install the app on an emulator/simulator (or real device)

Run:

- Android: `maestro test .maestro/android`
- iOS: `maestro test .maestro/ios`
- Flutter Android: `maestro test .maestro/flutter/android`
- Flutter iOS: `maestro test .maestro/flutter/ios`
