import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment_feature/core/utils/style.dart';

AppBar buildAPPBar({required final String title}) {
  return AppBar(
    leading: Center(
      child: SvgPicture.asset(
        'assets/images/arrow.svg',
      ),
    ),
    backgroundColor: Colors.transparent,
    elevation: 0,
    centerTitle: true,
    title: Text(
      title,
      textAlign: TextAlign.center,
      style: AppStyle.style25,
    ),
  );
}
