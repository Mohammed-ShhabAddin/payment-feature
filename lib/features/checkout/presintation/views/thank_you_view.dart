import 'package:flutter/material.dart';
import 'package:payment_feature/core/widgets/custome_app_bar.dart';

import 'widgets/thank_u_view_body.dart';

class ThankYouView extends StatelessWidget {
  const ThankYouView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAPPBar(
        title: "",
        context: context,
      ),
      body: Transform.translate(
        offset: const Offset(0, -16),
        child: ThankYouViewBody(),
      ),
    );
  }
}
