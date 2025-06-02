import 'package:flutter/material.dart';

import '../../../../../core/utils/style.dart';

class TotalPrice extends StatelessWidget {
  final String title;
  final String value;
  const TotalPrice({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: AppStyle.style24(context),
        ),
        const Spacer(),
        Text(
          value,
          style: AppStyle.style24(context),
        ),
      ],
    );
  }
}
