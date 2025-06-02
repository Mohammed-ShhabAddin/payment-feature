import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment_feature/core/utils/api_keys.dart';
import 'package:payment_feature/core/utils/api_service.dart';
import 'package:payment_feature/features/checkout/data/models/ephemeral_key/ephemeral_key.dart';
import 'package:payment_feature/features/checkout/data/models/payment_intent_input_model/payment_intent_input_model.dart';

import '../../features/checkout/data/models/payment_intent_input_model/init_payment_sheet_input_model.dart';
import '../../features/checkout/data/models/payment_intent_model/payment_intent_model.dart';

class StripeService {
  final ApiService apiService = ApiService();
  Future<PaymentIntentModel> createPaymentIntent(
      PaymentIntentInputModel paymentIntentInputModel) async {
    var response = await apiService.post(
      body: paymentIntentInputModel.toJson(),
      url: 'https://api.stripe.com/v1/payment_intents',
      token: ApiKeys.secretkey,
      contentType: Headers.formUrlEncodedContentType,
    );

    var paymentIntentModel = PaymentIntentModel.fromJson(response.data);
    return paymentIntentModel;
  }

  Future<PaymentIntentModel> createCustomer(
      //u should have CustomerModel class and CustomerInputModel class
      //like Future<customerModel> createCustomer(CustomerInputModel customerInputModel)
      //and use it here instead of paymentIntentModel
      PaymentIntentInputModel paymentIntentInputModel) async {
    var response = await apiService.post(
      body: paymentIntentInputModel.toJson(),
      url: 'https://api.stripe.com/v1/customers',
      token: ApiKeys.secretkey,
      contentType: Headers.formUrlEncodedContentType,
    );
    // var customerModel = CustomerModel.fromJson(response.data);
    // return customerModel;
    var paymentIntentModel = PaymentIntentModel.fromJson(response.data);
    return paymentIntentModel;
  }

  Future<EphemeralKeyModel> createEphemeralKey(
      {required String customerId}) async {
    var response = await apiService.post(
      body: {
        'customer': customerId,
      },
      url: 'https://api.stripe.com/v1/ephemeral_keys',
      token: ApiKeys.secretkey,
      contentType: Headers.formUrlEncodedContentType,
      headers: {
        'Authorization': "Bearer ${ApiKeys.secretkey}",
        'Stripe-Version': '2025-03-31.basil',
      },
    );

    var ephemeralKey = EphemeralKeyModel.fromJson(response.data);
    log('ephemeralKey: ${ephemeralKey.toJson()}');
    return ephemeralKey;
  }

  Future initPaymentSheet({
    required InitPaymentSheetInputModel initPaymentSheetinputModel,
  }) async {
    await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
      paymentIntentClientSecret: initPaymentSheetinputModel.clientSecret,
      merchantDisplayName: "msa store",
      customerEphemeralKeySecret: initPaymentSheetinputModel.ephemeralKeySecret,
      customerId:
          initPaymentSheetinputModel.customerId, // "cus_SAgFyofTYuQLCc",
    ));
  }

  Future displayPaymentSheet() async {
    try {
      await Stripe.instance.presentPaymentSheet();
    } on StripeException catch (e) {
      if (kDebugMode) {
        print('Error: ${e.error.localizedMessage}');
      }
    } catch (e) {
      if (kDebugMode) {
        print('Error: $e');
      }
    }
  }

  Future makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    var paymentIntentModel = await createPaymentIntent(paymentIntentInputModel);

    var ephimeralKeyModel = await createEphemeralKey(
        customerId: paymentIntentInputModel.customerId);

    var initPaymentSheetInputModel = InitPaymentSheetInputModel(
      clientSecret: paymentIntentModel.clientSecret!,
      customerId: paymentIntentInputModel.customerId,
      ephemeralKeySecret: ephimeralKeyModel.secret!,
    );
    await initPaymentSheet(
        initPaymentSheetinputModel: initPaymentSheetInputModel);

    await displayPaymentSheet();
  }
}
