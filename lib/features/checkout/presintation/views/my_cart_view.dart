import 'package:flutter/material.dart';
import '../../../../core/widgets/custome_app_bar.dart';
import 'widgets/my_cart_view_body.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAPPBar(title: 'My Cart'),
      body: const MyCartViewBody(),
    );
  }
}
