// import 'package:flutter/material.dart';
// import 'package:payment_feature/core/utils/style.dart';

// class CustomButton extends StatelessWidget {
//   const CustomButton(
//       {super.key, this.onTap, required this.btnText, this.isLoading = false});

//   final void Function()? onTap;
//   final String btnText;
//   final bool isLoading;
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         width: double.infinity,
//         height: 60,
//         decoration: ShapeDecoration(
//             color: Color(0xFF34A853),
//             shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(15))),
//         child: Center(
//           child: isLoading
//               ? CircularProgressIndicator(
//                   color: Colors.white,
//                 )
//               : Text(
//                   btnText,
//                   textAlign: TextAlign.center,
//                   style: AppStyle.style22(context),
//                 ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:payment_feature/core/utils/style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.onTap,
    required this.btnText,
    this.isLoading = false,
  });

  final void Function()? onTap;
  final String btnText;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: screenHeight * 0.07, // ~60 on 850px height
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
        decoration: ShapeDecoration(
          color: const Color(0xFF34A853),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(screenWidth * 0.04), // ~15
          ),
        ),
        child: Center(
          child: isLoading
              ? const CircularProgressIndicator(color: Colors.white)
              : Text(
                  btnText,
                  textAlign: TextAlign.center,
                  style: AppStyle.style22(context),
                ),
        ),
      ),
    );
  }
}
