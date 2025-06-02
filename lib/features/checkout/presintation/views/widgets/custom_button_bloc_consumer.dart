// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:payment_feature/features/checkout/presintation/views/thank_you_view.dart';

// import '../../../../../core/widgets/custom_button.dart';
// import '../../../data/models/payment_intent_input_model/payment_intent_input_model.dart';
// import '../manger/cubit/payment_cubit.dart';

// class CustomButtonBlocConsumer extends StatelessWidget {
//   const CustomButtonBlocConsumer({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<PaymentCubit, PaymentState>(
//       listener: (context, state) {
//         if (state is PaymentSuccess) {
//           Navigator.of(context).pushReplacement(
//             MaterialPageRoute(
//               builder: (context) => ThankYouView(),
//             ),
//           );
//         }
//         if (state is PaymentFailure) {
//           ScaffoldMessenger.of(context).showSnackBar(
//             SnackBar(
//               content: Text(state.message),
//               backgroundColor: Colors.red,
//             ),
//           );
//         }
//       },
//       builder: (context, state) {
//         return CustomButton(
//           isLoading: state is PaymentLoading ? true : false,
//           btnText: "Continue",
//           onTap: () {
//             PaymentIntentInputModel paymentIntentInputModel =
//                 PaymentIntentInputModel(
//               amount: "5000",
//               currency: 'usd',
//               customerId: "cus_SAgFyofTYuQLCc",
//             );
//             BlocProvider.of<PaymentCubit>(context)
//                 .makePayment(paymentIntentInputModel: paymentIntentInputModel);
//           },
//         );
//       },
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_feature/features/checkout/presintation/views/thank_you_view.dart';

import '../../../../../core/widgets/custom_button.dart';
import '../../../data/models/payment_intent_input_model/payment_intent_input_model.dart';
import '../manger/cubit/payment_cubit.dart';

class CustomButtonBlocConsumer extends StatelessWidget {
  const CustomButtonBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PaymentCubit, PaymentState>(
      listener: (context, state) {
        if (state is PaymentSuccess) {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const ThankYouView()),
          );
        } else if (state is PaymentFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.message),
              backgroundColor: Colors.red,
            ),
          );
        }
      },
      builder: (context, state) {
        final isLoading = state is PaymentLoading;

        return Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.05,
          ),
          child: CustomButton(
            isLoading: isLoading,
            btnText: "Continue",
            onTap: () {
              final paymentIntentInputModel = PaymentIntentInputModel(
                amount: "5000",
                currency: 'usd',
                customerId: "cus_SAgFyofTYuQLCc",
              );
              context.read<PaymentCubit>().makePayment(
                  paymentIntentInputModel: paymentIntentInputModel);
            },
          ),
        );
      },
    );
  }
}
