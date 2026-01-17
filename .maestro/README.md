# Maestro tests

This repo includes simple Maestro E2E flows for both apps:

- Android: `.maestro/android/hello-world.yaml`
- iOS: `.maestro/ios/hello-world.yaml`

## Run locally

Prereqs:

- Install Maestro: https://maestro.mobile.dev/
- Build + install the app on an emulator/simulator (or real device)

Run:

- Android: `maestro test .maestro/android`
- iOS: `maestro test .maestro/ios`
