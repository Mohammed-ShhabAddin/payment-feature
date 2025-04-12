import 'package:flutter/material.dart';

class CustomDashedLine extends StatelessWidget {
  const CustomDashedLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        30,
        (index) => Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2),
            child: Container(
              width: 10,
              height: 2,
              color: Color(0xFFB8B8B8),
            ),
          ),
        ),
      ),
    );
  }
}
