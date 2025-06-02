import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'core/utils/api_keys.dart';
import 'features/checkout/presintation/views/my_cart_view.dart';

void main() {
  Stripe.publishableKey = ApiKeys.stripePublishableKey;
  runApp(
    const CheckoutAPP(),
  );

  //  runApp(
  //   DevicePreview(
  //     enabled: true,
  //     builder: (context) => const CheckoutAPP(),
  //   ),
  // );
}

class CheckoutAPP extends StatelessWidget {
  const CheckoutAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: MyCartView(),
    );
  }
}

//payment steps
//1. Create a payment intent (amount,currency)
//on the server using the Stripe API. This will return a client secret that you will use to confirm the payment on the client side.
//2. init payment sheet (paymentIntentClientSecret)
//3. Present the payment sheet to the user. This will show the payment sheet with the payment methods available for the user to pay with.
//4. Confirm the payment. This will confirm the payment and return the result of the payment.

//for saveing card details
//PaymentIntentModel  createPaymentIntent(amount,currency,customerId)
//KeySecret createEphemeralKey(customerId)
//initPaymentSheet( merchantDisplayName,paymentintentClientSecret,ephemeralKeySecret)
//presentPaymentSheet()
