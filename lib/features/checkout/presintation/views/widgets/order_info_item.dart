import 'package:flutter/material.dart';

import '../../../../../core/utils/style.dart';

class OrderInfoItem extends StatelessWidget {
  final String title;
  final String value;
  const OrderInfoItem({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: AppStyle.style18,
        ),
        const Spacer(),
        Text(
          value,
          style: AppStyle.style18,
        ),
      ],
    );
  }
}
