// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:insert_page/design/textfont.dart';

class RepeatTime extends StatefulWidget {
  final String title;
  final VoidCallback onTap;

  const RepeatTime({
    super.key,
    required this.title,
    required this.onTap,
  });

  @override
  _RepeatTimeState createState() => _RepeatTimeState();
}

class _RepeatTimeState extends State<RepeatTime> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: '00');
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 1.0),
      child: Row(
        children: [
          text_it(widget.title, 20),
          SizedBox(width: widget.title == "  :" ? 10 : 20),  
          SizedBox(width: widget.title == "Tekrar" ? 30 : 0), 
          GestureDetector(
            onTap: widget.onTap,
            child: Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: const Color(0x00FFFFFF),
                borderRadius: BorderRadius.circular(11),
                border: Border.all(color: const Color(0xFFC1007F), width: 1),
              ),
              child: Center(
                child: TextField(
                  controller: _controller,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
