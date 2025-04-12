import 'package:flutter/material.dart';
import 'package:payment_feature/core/utils/style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap, required this.btnText});

  final void Function()? onTap;
  final String btnText;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 60,
        decoration: ShapeDecoration(
            color: Color(0xFF34A853),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15))),
        child: Center(
          child: Text(
            btnText,
            textAlign: TextAlign.center,
            style: AppStyle.style22,
          ),
        ),
      ),
    );
  }
}
