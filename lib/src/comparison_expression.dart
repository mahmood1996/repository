import 'conditional_expression.dart';

enum ComparisonOperator { equals, greaterThan }

class ComparisonExpression<ValueType> extends ConditionalExpression {
  final String attributeName;
  final ComparisonOperator operator;
  final ValueType value;

  ComparisonExpression({
    required this.attributeName,
    required this.operator,
    required this.value,
  });

  @override
  int get hashCode => Object.hashAll(_properties);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ComparisonExpression) return false;
    return _listEquals(_properties, other._properties);
  }

  List<Object?> get _properties => [attributeName, operator, value];
}

bool _listEquals<T>(List<T>? a, List<T>? b) {
  if (a == null) {
    return b == null;
  }
  if (b == null || a.length != b.length) {
    return false;
  }
  if (identical(a, b)) {
    return true;
  }
  for (int index = 0; index < a.length; index += 1) {
    if (a[index] != b[index]) {
      return false;
    }
  }
  return true;
}
