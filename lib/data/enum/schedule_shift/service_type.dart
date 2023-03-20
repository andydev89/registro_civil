enum ServiceType {
  ///Cedula
  identificationCard('Cédula'),
  passport('Pasaporte');

  const ServiceType(this.toText);
  final String toText;
  @override
  String toString() => toText;
}
