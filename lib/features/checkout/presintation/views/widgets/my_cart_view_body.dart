import 'package:flutter/material.dart';
import 'package:payment_feature/core/widgets/custom_button.dart';
import 'package:payment_feature/features/checkout/presintation/views/widgets/payment_details_view_body.dart';

import '../payment_details.dart';
import 'order_info_item.dart';
import 'total_price.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(
            height: 18,
          ),
          Expanded(
            child: Image.asset(
              'assets/images/cart.png',
            ),
          ),
          SizedBox(
            height: 25,
          ),
          OrderInfoItem(title: 'Order Subtotal', value: r'$42.97'),
          SizedBox(
            height: 3,
          ),
          OrderInfoItem(title: 'Discount', value: r'$0'),
          SizedBox(
            height: 3,
          ),
          OrderInfoItem(title: 'Shipping', value: r'$8'),
          SizedBox(
            height: 17,
          ),
          const Divider(
            thickness: 2,
            color: Color(0xFFC7C7C7),
            height: 34,
          ),
          TotalPrice(
            title: 'Total ',
            value: r'$50',
          ),
          SizedBox(
            height: 16,
          ),
          CustomButton(
            btnText: 'Complete Payment',
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return const PaymentMethodsBottomSheet();
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              );
            },
          ),
          SizedBox(
            height: 12,
          ),
        ],
      ),
    );
  }
}

class PaymentMethodsBottomSheet extends StatelessWidget {
  const PaymentMethodsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 16,
          ),
          PaymentMethodsListView(),
          SizedBox(
            height: 32,
          ),
          CustomButton(
            btnText: "Continue",
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PaymentDetailsView()));
            },
          )
        ],
      ),
    );
  }
}
