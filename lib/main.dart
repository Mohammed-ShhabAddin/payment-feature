import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'features/checkout/presintation/views/my_cart_view.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const CheckoutAPP(),
    ),
  );
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
