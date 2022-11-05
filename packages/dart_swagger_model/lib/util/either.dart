class Either<A, B> {
  A? left;
  B? right;

  Either({
    this.left,
    this.right,
  });

  Type get type => left != null ? left.runtimeType : right.runtimeType;

  get value => left as A ?? right as B;

  set value(dynamic value) {
    if (value is A) {
      left = value;
      return;
    }
    if (value is B) {
      right = value;
      return;
    }
    throw Error();
  }
}
