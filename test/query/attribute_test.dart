import 'package:repository/repository.dart';
import 'package:test/test.dart';

void main() {
  group('Attribute', () {
    test('equals(..)', () {
      var someValue = 0;
      ConditionalExpression actual = Attribute<int>.withName('anyName').equals(someValue);
      expect(
          actual,
          ComparisonExpression<int>(
            attributeName: 'anyName',
            operator: ComparisonOperator.equals,
            value: someValue,
          ));
    });
    test('greaterThan(..)', () {
      var someValue = 0;
      ConditionalExpression actual =
          Attribute<int>.withName('anyName').greaterThan(someValue);
      expect(
          actual,
          ComparisonExpression<int>(
            attributeName: 'anyName',
            operator: ComparisonOperator.greaterThan,
            value: someValue,
          ));
    });
  });
}





