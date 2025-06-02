// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:payment_feature/core/utils/style.dart';

// AppBar buildAPPBar({required final String title,required final BuildContext context}) {
//   return AppBar(
//     leading: Center(
//       child: SvgPicture.asset(
//         'assets/images/arrow.svg',
//       ),
//     ),
//     backgroundColor: Colors.transparent,
//     elevation: 0,
//     centerTitle: true,
//     title: Text(
//       title,
//       textAlign: TextAlign.center,
//       style: AppStyle.style25(context),
//     ),
//   );
// }

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:payment_feature/core/utils/style.dart';

AppBar buildAPPBar({
  required final String title,
  required final BuildContext context,
}) {
  final screenWidth = MediaQuery.of(context).size.width;

  return AppBar(
    leading: Padding(
      padding: EdgeInsets.only(left: screenWidth * 0.04),
      child: Center(
        child: SvgPicture.asset(
          'assets/images/arrow.svg',
          width: screenWidth * 0.06, // ~23px on 390px width
          height: screenWidth * 0.06,
        ),
      ),
    ),
    backgroundColor: Colors.transparent,
    elevation: 0,
    centerTitle: true,
    title: Text(
      title,
      textAlign: TextAlign.center,
      style: AppStyle.style25(context),
    ),
  );
}
