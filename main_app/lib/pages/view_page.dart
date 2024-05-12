import 'package:flutter/material.dart';
import '../design/view/view_addbar.dart';
import '../design/view/view_againtime.dart';
import '../design/view/view_daydate.dart';
import '../design/view/view_imagesbutton.dart';
import '../design/view/view_labelcolor.dart';
import '../design/view/view_readingboxes.dart';

class ViewPage extends StatelessWidget {
  const ViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Column(
          children: [
            const addbar("Araba Anahatri"),
            Masafe_H(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Imagesbutton("Ürün eki", "images/Araba_Anahtarı 1.jpg"),
                SizedBox(
                  width: 25,
                ),
                Imagesbutton("Yer eki", "images/Araba_Anahtarı 2.jpg")
              ],
            ),
            Masafe_H(),
            const SizedBox(
              width: 10,
            ),
            const readingboxes("Araba Anahatr", "Ürün Ad"),
            const readingboxes("Opel Araba Anahatarı", "Açıklama"),
            const readingboxes("kapı Aarksı Askılık", "Yer           "),
            const labelColor("#CarKey"),
            const AgainTime("01", "00", "40"),
            const DayDate("02", "01", "2023"),
          ],
        ),
        Positioned(
            bottom: 25,
            child: Image.asset(
              "images/yslogo.png",
              width: 390,
              height: 65,
            ))
      ]),
    );
  }
}

// ignore: non_constant_identifier_names
Widget Masafe_H() {
  return const SizedBox(
    height: 25,
  );
}