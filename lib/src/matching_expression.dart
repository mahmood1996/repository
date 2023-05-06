import 'conditional_expression.dart';

enum MatchingCriteria { startingWith, endingWith, contains }

class MatchingExpression extends ConditionalExpression {
  final String attributeName;
  final String value;
  final MatchingCriteria criteria;

  MatchingExpression({
    required this.attributeName,
    required this.value,
    required this.criteria,
  });

  @override
  String toString() {
    return '''MatchingExpression: attributeName: $attributeName, value: $value, criteria: $criteria''';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! MatchingExpression) return false;
    return attributeName == other.attributeName &&
        value == other.value &&
        criteria == other.criteria;
  }

  @override
  // ignore: unnecessary_overrides
  int get hashCode => super.hashCode;
}
