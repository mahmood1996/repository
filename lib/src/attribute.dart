import 'comparison_expression.dart';
import 'conditional_expression.dart';

class Attribute<ValueType> {
  final String _name;

  const Attribute.withName(this._name);

  ConditionalExpression equals(ValueType value) {
    return _createComparisonExpression(ComparisonOperator.equals, value);
  }

  ConditionalExpression greaterThan(ValueType value) {
    return _createComparisonExpression(ComparisonOperator.greaterThan, value);
  }

  ConditionalExpression lessThan(ValueType value) {
    return _createComparisonExpression(ComparisonOperator.lessThan, value);
  }

  ConditionalExpression _createComparisonExpression(
    ComparisonOperator operator,
    ValueType value,
  ) =>
      ComparisonExpression<ValueType>(
        attributeName: _name,
        operator: operator,
        value: value,
      );

  ConditionalExpression startWith(String value) {
    return _createMatchingExpression(value, MatchingCriteria.startingWith);
  }

  ConditionalExpression endWith(String value) {
    return _createMatchingExpression(value, MatchingCriteria.endingWith);
  }

  ConditionalExpression contains(String value) {
    return _createMatchingExpression(value, MatchingCriteria.contains);
  }

  MatchingExpression _createMatchingExpression(
    String value,
    MatchingCriteria criteria,
  ) =>
      MatchingExpression(
        attributeName: _name,
        value: value,
        criteria: criteria,
      );
}

enum MatchingCriteria { startingWith, endingWith, contains }

class MatchingExpression implements ConditionalExpression {
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
    other = other as MatchingExpression;
    return attributeName == other.attributeName &&
        value == other.value &&
        criteria == other.criteria;
  }

  @override
  // ignore: unnecessary_overrides
  int get hashCode => super.hashCode;
}
