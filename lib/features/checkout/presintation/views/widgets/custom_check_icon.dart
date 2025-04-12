import 'package:flutter/material.dart';

class CustomCheckIcon extends StatelessWidget {
  const CustomCheckIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 50,
      backgroundColor: const Color(0xFFD9D9D9),
      child: CircleAvatar(
        radius: 40,
        backgroundColor: const Color(0xFF34A853),
        child: const Icon(
          Icons.check,
          size: 40,
          color: Colors.white,
        ),
      ),
    );
  }
}

//
