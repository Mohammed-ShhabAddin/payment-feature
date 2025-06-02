// import 'package:flutter/material.dart';
// import 'package:flutter_credit_card/flutter_credit_card.dart';

// class CustomCreditCard extends StatefulWidget {
//   const CustomCreditCard({
//     super.key,
//     required this.formKey,
//     required this.autovalidateMode,
//   });

//   final GlobalKey<FormState> formKey;
//   final AutovalidateMode autovalidateMode;
//   @override
//   State<CustomCreditCard> createState() => _CustomCreditCardState();
// }

// class _CustomCreditCardState extends State<CustomCreditCard> {
//   String cardNumber = '', expiryDate = '', cardHolderName = '', cvvCode = '';

//   bool showBackView = false;

//   void onCreditCardModelChange(CreditCardModel creditCardModel) {
//     setState(() {
//       cardNumber = creditCardModel.cardNumber;
//       expiryDate = creditCardModel.expiryDate;
//       cardHolderName = creditCardModel.cardHolderName;
//       cvvCode = creditCardModel.cvvCode;
//       showBackView = creditCardModel.isCvvFocused;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         CreditCardWidget(
//           cardBgColor: const Color(0xff9EC7CB),
//           cardNumber: cardNumber,
//           expiryDate: expiryDate,
//           cardHolderName: cardHolderName,
//           cvvCode: cvvCode,
//           showBackView: showBackView,
//           onCreditCardWidgetChange: (value) {},
//           isHolderNameVisible: true,
//         ),
//         CreditCardForm(
//             autovalidateMode: widget.autovalidateMode,
//             cardNumber: cardNumber,
//             expiryDate: expiryDate,
//             cardHolderName: cardHolderName,
//             cvvCode: cvvCode,
//             onCreditCardModelChange: onCreditCardModelChange,
//             formKey: widget.formKey),
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class CustomCreditCard extends StatefulWidget {
  const CustomCreditCard({
    super.key,
    required this.formKey,
    required this.autovalidateMode,
  });

  final GlobalKey<FormState> formKey;
  final AutovalidateMode autovalidateMode;

  @override
  State<CustomCreditCard> createState() => _CustomCreditCardState();
}

class _CustomCreditCardState extends State<CustomCreditCard> {
  String cardNumber = '', expiryDate = '', cardHolderName = '', cvvCode = '';
  bool showBackView = false;

  void onCreditCardModelChange(CreditCardModel creditCardModel) {
    setState(() {
      cardNumber = creditCardModel.cardNumber;
      expiryDate = creditCardModel.expiryDate;
      cardHolderName = creditCardModel.cardHolderName;
      cvvCode = creditCardModel.cvvCode;
      showBackView = creditCardModel.isCvvFocused;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final horizontalPadding = screenWidth * 0.05;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: Column(
        children: [
          CreditCardWidget(
            cardBgColor: const Color(0xff9EC7CB),
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode: cvvCode,
            showBackView: showBackView,
            onCreditCardWidgetChange: (value) {},
            isHolderNameVisible: true,
          ),
          const SizedBox(height: 16),
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 600),
            child: CreditCardForm(
              autovalidateMode: widget.autovalidateMode,
              cardNumber: cardNumber,
              expiryDate: expiryDate,
              cardHolderName: cardHolderName,
              cvvCode: cvvCode,
              onCreditCardModelChange: onCreditCardModelChange,
              formKey: widget.formKey,
            ),
          ),
        ],
      ),
    );
  }
}
