import 'package:flutter/material.dart';

// abstract class AppStyle {
//   static const TextStyle style25 = TextStyle(
//     fontSize: 25,
//     fontWeight: FontWeight.w500,
//     color: Colors.black,
//     fontFamily: 'Inter',
//     height: 0,
//   );
//   static const TextStyle style24 = TextStyle(
//     fontSize: 24,
//     fontWeight: FontWeight.w600,
//     color: Colors.black,
//     fontFamily: 'Inter',
//     height: 0,
//   );
//   static const TextStyle style18 = TextStyle(
//     fontSize: 18,
//     fontWeight: FontWeight.w400,
//     color: Colors.black,
//     fontFamily: 'Inter',
//     height: 0,
//   );
//   static const TextStyle styleBold18 = TextStyle(
//     fontSize: 18,
//     fontWeight: FontWeight.w600,
//     color: Colors.black,
//     fontFamily: 'Inter',
//     height: 0,
//   );

//   static const TextStyle style20 = TextStyle(
//     fontSize: 20,
//     fontWeight: FontWeight.w400,
//     color: Colors.black,
//     fontFamily: 'Inter',
//     height: 0,
//   );
//   static const TextStyle style22 = TextStyle(
//     fontSize: 22,
//     fontWeight: FontWeight.w500,
//     color: Colors.black,
//     fontFamily: 'Inter',
//     height: 0,
//   );
//   static const TextStyle style22bold = TextStyle(
//     fontSize: 22,
//     fontWeight: FontWeight.w700,
//     color: Colors.black,
//     fontFamily: 'Inter',
//     height: 0,
//   );
// }

class AppStyle {
  static TextStyle style25(BuildContext context) => TextStyle(
        fontSize: MediaQuery.of(context).size.width * 0.065, // ~25 on 390 width
        fontWeight: FontWeight.w500,
        color: Colors.black,
        fontFamily: 'Inter',
      );

  static TextStyle style24(BuildContext context) => TextStyle(
        fontSize: MediaQuery.of(context).size.width * 0.062,
        fontWeight: FontWeight.w600,
        color: Colors.black,
        fontFamily: 'Inter',
      );

  static TextStyle style18(BuildContext context) => TextStyle(
        fontSize: MediaQuery.of(context).size.width * 0.046,
        fontWeight: FontWeight.w400,
        color: Colors.black,
        fontFamily: 'Inter',
      );

  static TextStyle styleBold18(BuildContext context) => TextStyle(
        fontSize: MediaQuery.of(context).size.width * 0.046,
        fontWeight: FontWeight.w600,
        color: Colors.black,
        fontFamily: 'Inter',
      );

  static TextStyle style20(BuildContext context) => TextStyle(
        fontSize: MediaQuery.of(context).size.width * 0.051,
        fontWeight: FontWeight.w400,
        color: Colors.black,
        fontFamily: 'Inter',
      );

  static TextStyle style22(BuildContext context) => TextStyle(
        fontSize: MediaQuery.of(context).size.width * 0.056,
        fontWeight: FontWeight.w500,
        color: Colors.white,
        fontFamily: 'Inter',
      );

  static TextStyle style22Bold(BuildContext context) => TextStyle(
        fontSize: MediaQuery.of(context).size.width * 0.056,
        fontWeight: FontWeight.w700,
        color: Colors.black,
        fontFamily: 'Inter',
      );
}
