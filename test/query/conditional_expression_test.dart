import 'package:repository/repository.dart';
import 'package:test/test.dart';

void main() {
  group('Conditional expression', () {
    test('and(ConditionalExpression expression)', () {
      var expression = const Attribute<int>.withName('any').equals(0);
      var anotherExpression =
          const Attribute<String>.withName('any').startWith('');
      expect(expression.and(anotherExpression),
          AndExpression(left: anotherExpression, right: expression));
    });
  });
}
