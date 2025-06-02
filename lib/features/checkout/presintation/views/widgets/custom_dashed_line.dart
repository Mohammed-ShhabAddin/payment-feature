// import 'package:flutter/material.dart';

// class CustomDashedLine extends StatelessWidget {
//   const CustomDashedLine({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: List.generate(
//         30,
//         (index) => Expanded(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 2),
//             child: Container(
//               width: 10,
//               height: 2,
//               color: Color(0xFFB8B8B8),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class CustomDashedLine extends StatelessWidget {
  const CustomDashedLine({
    super.key,
    this.dashCount = 20,
    this.dashColor = const Color(0xFFB8B8B8),
    this.dashHeight = 2,
    this.dashWidth = 10,
  });

  final int dashCount;
  final Color dashColor;
  final double dashHeight;
  final double dashWidth;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        dashCount,
        (index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2),
          child: Container(
            width: dashWidth,
            height: dashHeight,
            color: dashColor,
          ),
        ),
      ),
    );
  }
}
