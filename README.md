# Local Notification in Flutter 🚀

This repository demonstrates how to implement local notifications in a Flutter application using the `flutter_local_notifications` package. This is part of my **Advanced Flutter Challenge: 20 Steps to Enhance My Skills**.

## Screenshots

<img src = "https://github.com/user-attachments/assets/c8ae7bfd-8d67-4d11-8552-f5bcf36d43ee" height = 400> &emsp; <img src = "https://github.com/user-attachments/assets/39b2d0f4-0483-494c-99f3-738d60f65494"  height = 400>  &emsp; <img src = "https://github.com/user-attachments/assets/9d563d2d-b71e-4004-8404-2d3e126cb51f"  height = 400>  &emsp; 

## Prerequisites

Ensure you have Flutter installed on your machine. If not, follow the [official Flutter installation guide](https://flutter.dev/docs/get-started/install) to set it up.

## Dependencies

Add the following dependencies to your `pubspec.yaml` file: 

   ```yaml
dependencies:
  flutter:
    sdk: flutter
  flutter_local_notifications: latest_version
  ```

Run flutter pub get to install the dependencies.

## Usage

1. **Clone the repository:**

   ```bash
   git clone https://github.com/your-username/local_notification_flutter.git
   cd local_notification_flutter

2. **Run the app:**

      ```bash
      flutter run

3. **Trigger a Notification:**
  Press the floating action button in the app to trigger a local notification.

## Code Overview

- **NotificationHelper Class:**  
  Handles the initialization and display of local notifications.

  ```dart
  class NotificationHelper {
    static final notification = FlutterLocalNotificationsPlugin();

    static void init() {
      notification.initialize(
        const InitializationSettings(
          android: AndroidInitializationSettings('@mipmap/ic_launcher'),
        ),
      );
    }

    static void pushNotification({
      required String title, required String body}) async {
      var androidDetails = const AndroidNotificationDetails(
        'channelId',
        'channelName',
        importance: Importance.high,
        priority: Priority.high,
      );

      var notificationDetails = NotificationDetails(android: androidDetails);

      await notification.show(
        0,
        title,
        body,
        notificationDetails,
      );
    }
  }

- **main.dart:**
  Initializes the notification system when the app starts.

    ```dart
     void main() {
  WidgetsFlutterBinding.ensureInitialized();
  NotificationHelper.init();
  runApp(const MyApp());
  }

- **notification_page.dart:**
  Contains the UI where users can trigger a notification.

  ```dart
  onPressed: () {
  NotificationHelper.pushNotification(
    title: 'Local Notification',
    body: 'This is my first notification',
    );
  }
