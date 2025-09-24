# Fridge Tracker

Fridge Tracker is a Flutter application designed to help users manage and track items stored in
their fridge.  
It allows adding, updating, and removing items, while also notifying users about upcoming expiration
dates so they can reduce waste and plan meals more efficiently.

---

## Features

- **Authentication** – Secure login system.
- **Fridge Items Management** – Add and delete food items.
- **Expiration Tracking** – View items that are expired or close to expiration.
- **Image Support** – Attach images to fridge items.
- **Custom Theme** – A fridge-inspired UI with user-friendly design.
- **Cross-platform** – Runs on both Android and iOS.

---

## Technology Stack

- **Framework:** [Flutter](https://flutter.dev)
- **State Management:** [Bloc & Cubit](https://pub.dev/packages/flutter_bloc)
- **Backend:** [Firebase](https://firebase.google.com/) (Firestore, Auth, Storage)
- **Image Loading:** [cached_network_image](https://pub.dev/packages/cached_network_image)

---

## Project Architecture

The project follows **Clean Architecture** principles, separated into distinct layers:

- **lib/authentication** – Login-related UI, blocs, and repositories
- **lib/core** – Shared helpers, theme, extensions, and base widgets
- **lib/goods** – Fridge item management (blocs, DTOs, pages, repositories, widgets)
- **lib/profile** – User profile and related functionality
- **lib/settings** – Application settings and configuration

This modular structure keeps the codebase clean, testable, and scalable.

---

## Getting Started

1. Clone the repository
2. Run `flutter pub get` to install dependencies
3. Set up Firebase for your project (Firestore, Auth, Storage)
4. Run the app using:
   ```bash
   flutter run
5. Create own account or use my existing for log in (email:secerovic.dusan@gmail.com, pass:
   Dusan.988)