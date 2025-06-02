// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';

// import '../../../../../core/utils/style.dart';

// class CardInfoWidget extends StatelessWidget {
//   const CardInfoWidget({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 305,
//       padding: const EdgeInsets.symmetric(
//         vertical: 16,
//         horizontal: 22,
//       ),
//       decoration: ShapeDecoration(
//         color: Colors.white,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(15),
//         ),
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           SvgPicture.asset(
//             'assets/images/master_card.svg',
//           ),
//           const SizedBox(
//             width: 23,
//           ),
//           Text.rich(
//             TextSpan(
//               children: [
//                 TextSpan(
//                     text: 'credit card\n', style: AppStyle.style18(context)),
//                 TextSpan(
//                     text: 'MasterCard **85', style: AppStyle.style18(context)),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/style.dart';

class CardInfoWidget extends StatelessWidget {
  const CardInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth * 0.8, // 80% of screen width
      padding: EdgeInsets.symmetric(
        vertical: screenWidth * 0.04, // ~16 on 390px
        horizontal: screenWidth * 0.055, // ~22 on 390px
      ),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(screenWidth * 0.04), // ~15
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/images/master_card.svg',
            width: screenWidth * 0.1, // ~39px on 390px
          ),
          SizedBox(width: screenWidth * 0.06), // ~23px on 390px
          Flexible(
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'credit card\n',
                    style: AppStyle.style18(context),
                  ),
                  TextSpan(
                    text: 'MasterCard **85',
                    style: AppStyle.style18(context),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
