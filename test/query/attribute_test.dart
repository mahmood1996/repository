import 'package:repository/repository.dart';
import 'package:test/test.dart';

void main() {
  late Attribute<int> anyAttribute;
  const attributeName = 'anyName';

  setUp(() {
    anyAttribute = const Attribute<int>.withName(attributeName);
  });

  group('Attribute', () {
    test('equals(..)', () {
      var someValue = 0;
      ConditionalExpression actual = anyAttribute.equals(someValue);
      expect(
          actual,
          ComparisonExpression<int>(
            attributeName: attributeName,
            operator: ComparisonOperator.equals,
            value: someValue,
          ));
    });

    test('greaterThan(..)', () {
      var someValue = 0;
      ConditionalExpression actual = anyAttribute.greaterThan(someValue);
      expect(
          actual,
          ComparisonExpression<int>(
            attributeName: attributeName,
            operator: ComparisonOperator.greaterThan,
            value: someValue,
          ));
    });

    test('lessThan(..)', () {
      var someValue = 0;
      ConditionalExpression actual = anyAttribute.lessThan(someValue);
      expect(
          actual,
          ComparisonExpression<int>(
            attributeName: attributeName,
            operator: ComparisonOperator.lessThan,
            value: someValue,
          ));
    });

    test('startWith(...)', () {
      ConditionalExpression result =
          const Attribute<String>.withName('anyAttribute')
              .startWith('anyString');

      expect(
          result,
          MatchingExpression(
            attributeName: 'anyAttribute',
            value: 'anyString',
            criteria: MatchingCriteria.startingWith,
          ));
    });

    test('endWith(...)', () {
      ConditionalExpression result =
          const Attribute<String>.withName('anyAttribute').endWith('anyString');

      expect(
          result,
          MatchingExpression(
            attributeName: 'anyAttribute',
            value: 'anyString',
            criteria: MatchingCriteria.endingWith,
          ));
    });
  });
}
