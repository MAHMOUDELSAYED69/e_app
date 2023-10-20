import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 430,
        height: 420,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.00, -1.00),
            end: Alignment(0, 1),
            colors: [Color(0xD80062BD), Color(0x000062BD)],
          ),
        ),
        child: const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 63,
              ),
              //BackIcon(),
              SizedBox(
                height: 150,
              ),
              Column(
                children: [
                  Center(
                    child: Icon(
                      Icons.notifications_off_rounded,
                      size: 100,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    " Don't Notifications",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
