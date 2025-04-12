import 'package:flutter/material.dart';

import 'custom_check_icon.dart';
import 'custom_dashed_line.dart';
import 'thank_u_card.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Stack(clipBehavior: Clip.none, children: [
        ThankYouCard(),
        Positioned(
          left: 20 + 8,
          right: 20 + 8,
          bottom: MediaQuery.sizeOf(context).height * .2 + 20,
          child: CustomDashedLine(),
        ),
        Positioned(
          left: 0,
          right: 0,
          top: -50,
          child: CustomCheckIcon(),
        ),
        Positioned(
            bottom: MediaQuery.sizeOf(context).height * .2,
            left: -20,
            child: CircleAvatar(
              backgroundColor: Colors.white,
            )),
        Positioned(
          bottom: MediaQuery.sizeOf(context).height * .2,
          right: -20,
          child: CircleAvatar(
            backgroundColor: Colors.white,
          ),
        ),
      ]),
    );
  }
}
