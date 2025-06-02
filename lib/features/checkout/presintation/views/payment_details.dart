import 'package:flutter/material.dart';

import '../../../../core/widgets/custome_app_bar.dart';
import 'widgets/payment_details_view_body.dart';

class PaymentDetailsView extends StatelessWidget {
  const PaymentDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAPPBar(title: 'Payment Details', context: context),
      body: const PaymentDetailsViewBody(),
    );
  }
}
