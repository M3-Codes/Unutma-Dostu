import 'package:flutter/material.dart';

import '../../pages/home_page.dart';
import '../textfont.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFFC1007F),
      leading: Tooltip(
        message: 'Geri',
        child: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
            );
          },
        ),
      ),
      centerTitle: true,
      title: const Textfont(
        'Yeni Ürün',
        25,
      ),
      actions: [
        Tooltip(
          message: 'Kaydet',
          child: IconButton(
            icon: const Icon(Icons.save, color: Colors.white),
            onPressed: () {
              //TODO
            },
          ),
        ),
      ],
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

// This is a placeholder for the new page you want to navigate to.
// Replace this with your actual new page widget.

