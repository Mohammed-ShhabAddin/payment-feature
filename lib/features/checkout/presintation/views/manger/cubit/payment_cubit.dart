import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:payment_feature/features/checkout/data/repository/checkout_repo.dart';

import '../../../../data/models/payment_intent_input_model/payment_intent_input_model.dart';

part 'payment_state.dart';

class PaymentCubit extends Cubit<PaymentState> {
  final CheckoutRepo checkoutRepo;
  PaymentCubit(this.checkoutRepo) : super(PaymentInitial());

  Future makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    emit(PaymentLoading());

    var paymentIntent = await checkoutRepo.makePayment(
        paymentIntentInputModel: paymentIntentInputModel);
    paymentIntent.fold(
      (failure) {
        emit(PaymentFailure(failure.message));
      },
      (paymentIntent) {
        emit(PaymentSuccess());
      },
    );
  }

  @override
  void onChange(Change<PaymentState> change) {
    super.onChange(change);
    log(change.toString());
  }
}
