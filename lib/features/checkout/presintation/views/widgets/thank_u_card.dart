// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:payment_feature/core/utils/style.dart';

// import 'card_info_widget.dart';
// import 'payment_item_info.dart';
// import 'total_price.dart';

// class ThankYouCard extends StatelessWidget {
//   const ThankYouCard({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         width: double.infinity,
//         decoration: ShapeDecoration(
//             color: Color(0xFFEDEDED),
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(20),
//             )),
//         child: Padding(
//           padding: const EdgeInsets.only(
//             top: 50 + 16,
//             left: 22,
//             right: 22,
//           ),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Text(
//                 'Thank you!',
//                 textAlign: TextAlign.center,
//                 style: AppStyle.style25(context),
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               Text(
//                 'Your transaction has been placed successfully',
//                 textAlign: TextAlign.center,
//                 style: AppStyle.style20(context),
//               ),
//               const SizedBox(
//                 height: 42,
//               ),
//               const PaymentItemInfo(
//                 title: 'Date:',
//                 value: '12/12/2024 ',
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               const PaymentItemInfo(
//                 title: 'time',
//                 value: '10:25 PM',
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               const PaymentItemInfo(
//                 title: 'To',
//                 value: 'msa',
//               ),
//               Divider(
//                 height: 60,
//                 thickness: 2,
//               ),
//               TotalPrice(
//                 title: 'Total',
//                 value: r'$50',
//               ),
//               const SizedBox(
//                 height: 30,
//               ),
//               CardInfoWidget(),
//               Spacer(),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Icon(
//                     FontAwesomeIcons.barcode,
//                     size: 64,
//                   ),
//                   Container(
//                     height: 58,
//                     width: 113,
//                     decoration: ShapeDecoration(
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(15),
//                         side: const BorderSide(
//                             width: 1.5, color: Color(0xFF34A853)),
//                       ),
//                     ),
//                     child: Center(
//                       child: Text(
//                         'PAID',
//                         textAlign: TextAlign.center,
//                         style: AppStyle.style24(context)
//                             .copyWith(color: Color(0xFF34A853)),
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height:
//                         ((MediaQuery.sizeOf(context).height * 0.2 + 200) / 2) -
//                             29,
//                   )
//                 ],
//               )
//             ],
//           ),
//         ));
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment_feature/core/utils/style.dart';

import 'card_info_widget.dart';
import 'payment_item_info.dart';
import 'total_price.dart';

class ThankYouCard extends StatelessWidget {
  const ThankYouCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth,
      decoration: ShapeDecoration(
        color: Color(0xFFEDEDED),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          top: screenHeight * 0.1, // 10% of screen height for top padding
          left: screenWidth * 0.05, // 5% of screen width for left padding
          right: screenWidth * 0.05, // 5% of screen width for right padding
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Thank you!',
              textAlign: TextAlign.center,
              style: AppStyle.style25(context),
            ),
            const SizedBox(height: 8),
            Text(
              'Your transaction has been placed successfully',
              textAlign: TextAlign.center,
              style: AppStyle.style20(context),
            ),
            SizedBox(height: screenHeight * 0.025), // Dynamic spacing
            const PaymentItemInfo(
              title: 'Date:',
              value: '12/12/2024 ',
            ),
            SizedBox(height: screenHeight * 0.02), // Dynamic spacing
            const PaymentItemInfo(
              title: 'time:',
              value: '10:25 PM',
            ),
            SizedBox(height: screenHeight * 0.02), // Dynamic spacing
            const PaymentItemInfo(
              title: 'To:',
              value: 'Chandler Bing',
            ),
            Divider(
              height: screenHeight * 0.04, // Adjust divider height dynamically
              thickness: 2,
            ),
            TotalPrice(
              title: 'Total',
              value: r'$50',
            ),
            SizedBox(height: screenHeight * 0.02), // Dynamic spacing
            CardInfoWidget(),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Icon(
                //   FontAwesomeIcons.barcode,
                //   size: screenWidth * 0.15, // Dynamic size for icon
                // ),
                SizedBox(),
                SvgPicture.asset(
                  'assets/images/barcode.svg', // Path to your SVG file in assets
                  width: screenWidth * 0.20, // Dynamic size for SVG image
                  height: screenWidth * 0.15, // Dynamic size for SVG image
                ),
                Container(
                  height: screenHeight * 0.07, // Dynamic height for container
                  width: screenWidth * 0.3, // Dynamic width for container
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: const BorderSide(
                          width: 1.5, color: Color(0xFF34A853)),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'PAID',
                      textAlign: TextAlign.center,
                      style: AppStyle.style24(context).copyWith(
                        color: Color(0xFF34A853),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height:
                      screenHeight * 0.22, // Dynamic size for bottom spacing
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
