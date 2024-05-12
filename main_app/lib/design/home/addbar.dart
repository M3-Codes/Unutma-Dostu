import 'package:flutter/material.dart';

import '../textfont.dart';

// ignore: camel_case_types
class addbar extends StatelessWidget {
  final String title;
  const addbar(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.info),
        onPressed: () {
          _showAboutDialog(context);
        },
        color: Colors.white,
      ),
      backgroundColor: const Color(0xFFC1007F),
      title: Textfont("Hoş Geldin $title", 30),
      centerTitle: true,
    );
  }

  void _showAboutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('عن التطبيق'),
          content: const Text(
              'هذا التطبيق هو عبارة عن تطبيق تجريبي لعرض مهارات تطوير تطبيقات Flutter.'),
          actions: <Widget>[
            TextButton(
              child: const Text('Ok'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
