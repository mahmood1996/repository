import 'package:repository/repository.dart';
import 'package:test/test.dart';

void main() {
  group('Attribute', () {
    group('comparison operations', () {
      late Attribute<int> anyAttribute;

      const attributeName = 'anyName';

      setUp(() {
        anyAttribute = const Attribute<int>.withName(attributeName);
      });

      test('equals(..)', () {
        var someValue = 0;
        expect(
            anyAttribute.equals(someValue),
            ComparisonExpression<int>(
              attributeName: attributeName,
              operator: ComparisonOperator.equals,
              value: someValue,
            ));
      });

      test('greaterThan(..)', () {
        var someValue = 0;
        expect(
            anyAttribute.greaterThan(someValue),
            ComparisonExpression<int>(
              attributeName: attributeName,
              operator: ComparisonOperator.greaterThan,
              value: someValue,
            ));
      });

      test('lessThan(..)', () {
        var someValue = 0;
        expect(
            anyAttribute.lessThan(someValue),
            ComparisonExpression<int>(
              attributeName: attributeName,
              operator: ComparisonOperator.lessThan,
              value: someValue,
            ));
      });
    });

    group('matching operations', () {
      late Attribute<String> anyAttribute;

      const attributeName = 'anyAttribute';

      setUp(() {
        anyAttribute = const Attribute<String>.withName(attributeName);
      });

      test('startWith(...)', () {
        expect(
            anyAttribute.startWith('anyString'),
            MatchingExpression(
              attributeName: attributeName,
              value: 'anyString',
              criteria: MatchingCriteria.startingWith,
            ));
      });

      test('endWith(...)', () {
        expect(
            anyAttribute.endWith('anyString'),
            MatchingExpression(
              attributeName: attributeName,
              value: 'anyString',
              criteria: MatchingCriteria.endingWith,
            ));
      });
    });
  });
}
