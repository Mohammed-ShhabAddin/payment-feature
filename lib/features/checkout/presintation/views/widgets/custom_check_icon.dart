// import 'package:flutter/material.dart';

// class CustomCheckIcon extends StatelessWidget {
//   const CustomCheckIcon({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return CircleAvatar(
//       radius: 50,
//       backgroundColor: const Color(0xFFD9D9D9),
//       child: CircleAvatar(
//         radius: 40,
//         backgroundColor: const Color(0xFF34A853),
//         child: const Icon(
//           Icons.check,
//           size: 40,
//           color: Colors.white,
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class CustomCheckIcon extends StatelessWidget {
  const CustomCheckIcon({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    final outerRadius = screenWidth * 0.13; // ~50 for 390px width
    final innerRadius = screenWidth * 0.10; // ~40
    final iconSize = screenWidth * 0.10; // ~40

    return CircleAvatar(
      radius: outerRadius,
      backgroundColor: const Color(0xFFD9D9D9),
      child: CircleAvatar(
        radius: innerRadius,
        backgroundColor: const Color(0xFF34A853),
        child: Icon(
          Icons.check,
          size: iconSize,
          color: Colors.white,
        ),
      ),
    );
  }
}
