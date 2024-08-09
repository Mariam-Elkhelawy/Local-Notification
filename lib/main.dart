import 'package:flutter/material.dart';
import 'package:local_notification/notification_helper.dart';
import 'package:local_notification/notification_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  NotificationHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NotificationPage(),
    );
  }
}
