// import 'package:flutter/material.dart';
// import 'package:payment_feature/core/widgets/custom_button.dart';

// import '../../../data/repository/checkout_repo_impl.dart';
// import '../manger/cubit/payment_cubit.dart';
// import 'order_info_item.dart';
// import 'payment_methods_bottomsheet.dart';
// import 'total_price.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class MyCartViewBody extends StatelessWidget {
//   const MyCartViewBody({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 20),
//       child: Column(
//         children: [
//           SizedBox(
//             height: 18,
//           ),
//           Expanded(
//             child: Image.asset(
//               'assets/images/cart.png',
//             ),
//           ),
//           SizedBox(
//             height: 25,
//           ),
//           OrderInfoItem(title: 'Order Subtotal', value: r'$42.97'),
//           SizedBox(
//             height: 3,
//           ),
//           OrderInfoItem(title: 'Discount', value: r'$0'),
//           SizedBox(
//             height: 3,
//           ),
//           OrderInfoItem(title: 'Shipping', value: r'$8'),
//           SizedBox(
//             height: 17,
//           ),
//           const Divider(
//             thickness: 2,
//             color: Color(0xFFC7C7C7),
//             height: 34,
//           ),
//           TotalPrice(
//             title: 'Total ',
//             value: r'$50',
//           ),
//           SizedBox(
//             height: 16,
//           ),
//           CustomButton(
//             btnText: 'Complete Payment',
//             onTap: () {
//               showModalBottomSheet(
//                 context: context,
//                 builder: (context) {
//                   return BlocProvider(
//                     create: (context) => PaymentCubit(CheckoutRepoImpl()),
//                     child: const PaymentMethodsBottomSheet(),
//                   );
//                 },
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(16),
//                 ),
//               );
//             },
//           ),
//           SizedBox(
//             height: 12,
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_feature/core/widgets/custom_button.dart';

import '../../../data/repository/checkout_repo_impl.dart';
import '../manger/cubit/payment_cubit.dart';
import 'order_info_item.dart';
import 'payment_methods_bottomsheet.dart';
import 'total_price.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(height: 18),
          Expanded(
            child: Image.asset('assets/images/cart.png'),
          ),
          const SizedBox(height: 25),
          const OrderInfoItem(title: 'Order Subtotal', value: r'$42.97'),
          const SizedBox(height: 3),
          const OrderInfoItem(title: 'Discount', value: r'$0'),
          const SizedBox(height: 3),
          const OrderInfoItem(title: 'Shipping', value: r'$8'),
          const SizedBox(height: 17),
          const Divider(
            thickness: 2,
            color: Color(0xFFC7C7C7),
            height: 34,
          ),
          const TotalPrice(
            title: 'Total',
            value: r'$50',
          ),
          const SizedBox(height: 16),
          CustomButton(
            btnText: 'Complete Payment',
            onTap: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                builder: (context) {
                  return BlocProvider(
                    create: (context) => PaymentCubit(CheckoutRepoImpl()),
                    child: const PaymentMethodsBottomSheet(),
                  );
                },
              );
            },
          ),
          const SizedBox(height: 12),
        ],
      ),
    );
  }
}
