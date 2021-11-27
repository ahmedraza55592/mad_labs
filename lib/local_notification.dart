import 'package:flutter/material.dart';
import 'package:mad_labs/widgets/button.dart';

import 'notification_service.dart';

class LocalNotification extends StatefulWidget {
  const LocalNotification({Key? key}) : super(key: key);

  @override
  _LocalNotificationState createState() => _LocalNotificationState();
}

class _LocalNotificationState extends State<LocalNotification> {
  final NotificationService _notificationService = NotificationService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 200.0,
            ),
            const SizedBox(
              height: 10.0,
            ),
            ButtonWidget(
              buttonText: "Tap  a Notifiction",
              onPressed: () async {
                await _notificationService.showNotifications();
              },
            ),
            const SizedBox(
              height: 100.0,
            ),
            const SizedBox(
              height: 20.0,
            ),
            ButtonWidget(
              buttonText: "Schedule Notification",
              onPressed: () async {
                await _notificationService.scheduleNotifications();
              },
            )
          ],
        ),
      ),
    );
  }
}
