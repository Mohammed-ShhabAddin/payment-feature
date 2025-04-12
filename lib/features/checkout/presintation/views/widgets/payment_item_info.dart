import 'package:flutter/material.dart';

import '../../../../../core/utils/style.dart';

class PaymentItemInfo extends StatelessWidget {
  const PaymentItemInfo({
    super.key,
    required this.title,
    required this.value,
  });
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(
        'Date:',
        textAlign: TextAlign.center,
        style: AppStyle.style18,
      ),
      Text(
        ' 12/12/2023',
        textAlign: TextAlign.center,
        style: AppStyle.styleBold18,
      ),
    ]);
  }
}
