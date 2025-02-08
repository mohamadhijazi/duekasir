enum TypePayment {
  cash,
  qris,
  transfer;

  String get message {
    return switch (this) {
      cash => ' Cash',
      qris => 'الدفع باستخدام OMT',
      transfer => 'الدفع عن طريق التحويل',
    };
  }
}