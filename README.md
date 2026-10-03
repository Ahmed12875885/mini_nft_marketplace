# Mini NFT Marketplace

A Flutter-based early-stage NFT marketplace prototype focused on the onboarding experience for users exploring NFT collections.

## Project Overview
This project is a lightweight mobile application concept focused on an NFT marketplace landing flow and onboarding experience. The current implementation includes a polished onboarding screen, glass-style UI cards, and a custom themed asset setup that reflects a premium digital collectibles experience.

## Current Status
The app is in an early prototype stage. It currently includes:
- Onboarding screen
- Welcome message and CTA
- Glassmorphism-style UI
- Initial route setup
- Centralized resource managers

It does not yet include a full marketplace flow such as:
- NFT browsing/search
- NFT details
- Wallet
- Buying/selling
- Profile/collections
- Backend/API

## Tech Stack
- Flutter
- Dart
- Material Design
- Custom asset and resource organization

## Project Structure
```text
mini_nft_app/
├── lib/
│   ├── app/
│   │   └── my_app.dart
│   ├── core/
│   │   └── resources/
│   │       ├── color_manager.dart
│   │       ├── font_manager.dart
│   │       ├── images_manager.dart
│   │       ├── route_manager.dart
│   │       ├── size_manager.dart
│   │       └── string_manager.dart
│   ├── features/
│   │   └── onboarding/
│   │       ├── screens/
│   │       └── widgets/
│   ├── main.dart
│   └── ...
├── assets/
│   └── image/
├── android/
├── ios/
├── linux/
├── macos/
├── web/
├── windows/
├── analysis_options.yaml
├── pubspec.yaml
├── pubspec.lock
└── README.md
```

## Run the App
From the project root, run:

```bash
flutter pub get
flutter run
```

## Notes
This is a design-first prototype intended to establish the visual direction and onboarding experience for a future NFT marketplace app.

## Future Improvements
These are planned features and are not currently implemented:
- Add real NFT listing screens
- Implement navigation between onboarding and home screens
- Add state management and data models
- Connect to backend or mock data
- Improve naming consistency and folder structure
- Add tests and automation
