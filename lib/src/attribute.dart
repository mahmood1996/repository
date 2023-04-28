import 'comparison_expression.dart';
import 'conditional_expression.dart';

class Attribute<ValueType> {
  final String name;

  const Attribute.withName(this.name);

  ConditionalExpression equals(ValueType value) {
    return _createComparisonExpression(ComparisonOperator.equals, value);
  }

  ConditionalExpression greaterThan(ValueType value) {
    return _createComparisonExpression(ComparisonOperator.greaterThan, value);
  }

  ConditionalExpression _createComparisonExpression(
      ComparisonOperator operator, ValueType value) {
    return ComparisonExpression<ValueType>(
      attributeName: name,
      operator: operator,
      value: value,
    );
  }
}
