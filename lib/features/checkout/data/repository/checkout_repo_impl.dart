import 'package:dartz/dartz.dart';
import 'package:payment_feature/core/utils/stripe_service.dart';

import '../../../../core/errors/failures.dart';
import '../models/payment_intent_input_model/payment_intent_input_model.dart';
import 'checkout_repo.dart';

class CheckoutRepoImpl implements CheckoutRepo {
  final StripeService stripeService = StripeService();
  @override
  Future<Either<Failure, void>> makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    try {
      await stripeService.makePayment(
          paymentIntentInputModel: paymentIntentInputModel);

      return Right(null);
    } catch (err) {
      return Left(ServerFailure(message: err.toString()));
    }
  }
}
