enum RelationshipType {
  ///Conyugue o conviviente
  spouseOrCohabitant('Cónyugue o conviviente'),
  minorChild('Hijo menor de edad'),
  brother('Hermano'),
  father('Padre'),
  mother('Madre');

  const RelationshipType(this.toText);
  final String toText;
  @override
  String toString() => toText;
}
