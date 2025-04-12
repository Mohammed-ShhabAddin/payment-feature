import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/style.dart';

class CardInfoWidget extends StatelessWidget {
  const CardInfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 305,
      padding: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 22,
      ),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/images/master_card.svg',
          ),
          const SizedBox(
            width: 23,
          ),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(text: 'credit card\n', style: AppStyle.style18),
                TextSpan(text: 'MasterCard **85', style: AppStyle.style18),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
