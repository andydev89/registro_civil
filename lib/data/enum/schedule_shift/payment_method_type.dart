enum PaymentMethodType {
  ///Pago corresponsal
  correspondentPayment('Pago corresponsal'),
  placeToPay('Place to pay');

  const PaymentMethodType(this.toText);
  final String toText;
}
