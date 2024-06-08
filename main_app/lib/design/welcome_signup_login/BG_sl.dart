// ignore_for_file: file_names

import 'package:flutter/material.dart';

// ignore: camel_case_types
class BG_sl extends StatelessWidget {
  const BG_sl({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xFFc10080), Color(0xFF000000), Color(0xFF000000)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter)),
    );
  }
}
