import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:payment_feature/core/widgets/custom_button.dart';
import 'package:payment_feature/features/checkout/presintation/views/thank_you_view.dart';

import 'custom_credit_card.dart';
import 'payment_method_item.dart';

class PaymentDetailsViewBody extends StatefulWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  State<PaymentDetailsViewBody> createState() => _PaymentDetailsViewBodyState();
}

class _PaymentDetailsViewBodyState extends State<PaymentDetailsViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: PaymentMethodsListView(),
        ),
        SliverToBoxAdapter(
          child: CustomCreditCard(
            formKey: formKey,
            autovalidateMode: autovalidateMode,
          ),
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: CustomButton(
                btnText: 'Payment',
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    log('Card');

                    // Perform payment action
                  } else {
                    // Show error message
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const ThankYouView(),
                      ),
                    );
                  }
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class PaymentMethodsListView extends StatefulWidget {
  const PaymentMethodsListView({super.key});

  @override
  State<PaymentMethodsListView> createState() => _PaymentMethodsListViewState();
}

class _PaymentMethodsListViewState extends State<PaymentMethodsListView> {
  int activeIndex = 0;
  final List<String> paymentMethodItems = const [
    "assets/images/credit.svg",
    "assets/images/paypal.svg",
    "assets/images/pay-apple.svg",
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ListView.builder(
        itemCount: paymentMethodItems.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: GestureDetector(
            onTap: () {
              activeIndex = index;
              setState(() {});
            },
            child: PaymentMethodItem(
              isActive: activeIndex == index,
              image: paymentMethodItems[index],
            ),
          ),
        ),
      ),
    );
  }
}
