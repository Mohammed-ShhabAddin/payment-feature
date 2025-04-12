import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
    return Container(
        width: double.infinity,
        decoration: ShapeDecoration(
            color: Color(0xFFEDEDED),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            )),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 50 + 16,
            left: 22,
            right: 22,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Thank you!',
                textAlign: TextAlign.center,
                style: AppStyle.style25,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Your transaction has been placed successfully',
                textAlign: TextAlign.center,
                style: AppStyle.style20,
              ),
              const SizedBox(
                height: 42,
              ),
              const PaymentItemInfo(
                title: 'Date:',
                value: '12/12/2024 ',
              ),
              SizedBox(
                height: 20,
              ),
              const PaymentItemInfo(
                title: 'time',
                value: '10:25 PM',
              ),
              SizedBox(
                height: 20,
              ),
              const PaymentItemInfo(
                title: 'To',
                value: 'msa',
              ),
              Divider(
                height: 60,
                thickness: 2,
              ),
              TotalPrice(
                title: 'Total',
                value: r'$50',
              ),
              const SizedBox(
                height: 30,
              ),
              CardInfoWidget(),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    FontAwesomeIcons.barcode,
                    size: 64,
                  ),
                  Container(
                    height: 58,
                    width: 113,
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
                        style:
                            AppStyle.style24.copyWith(color: Color(0xFF34A853)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height:
                        ((MediaQuery.sizeOf(context).height * 0.2 + 200) / 2) -
                            29,
                  )
                ],
              )
            ],
          ),
        ));
  }
}
