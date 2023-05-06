abstract class ConditionalExpression {
  ConditionalExpression and(ConditionalExpression other) =>
      AndExpression(left: this, right: other);
}

class AndExpression extends ConditionalExpression {
  final ConditionalExpression left;
  final ConditionalExpression right;

  AndExpression({required this.left, required this.right});

  @override
  bool operator ==(Object other) {
    other = other as AndExpression;
    return (left == other.left && right == other.right) ||
        (left == other.right && right == other.left);
  }

  @override
  // ignore: unnecessary_overrides
  int get hashCode => super.hashCode;
}
