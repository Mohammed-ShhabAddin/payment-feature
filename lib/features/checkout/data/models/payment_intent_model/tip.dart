class Tip {
  final double amount;
  final String currency;

  Tip({required this.amount, required this.currency});

  factory Tip.fromJson(Map<String, dynamic> json) {
    return Tip(
      amount: (json['amount'] as num).toDouble(),
      currency: json['currency'] as String,
    );
  }
  // Tip();

  // factory Tip.fromJson(Map<String, dynamic> json) {
  //   // TODO: implement fromJson
  //   throw UnimplementedError('Tip.fromJson($json) is not implemented');
  // }

  Map<String, dynamic> toJson() {
    return {
      'amount': amount,
      'currency': currency,
    };
  }
}
