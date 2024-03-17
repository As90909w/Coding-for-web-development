//tools
mind< test('should create a mixin with documentations', () {
    expect(
      Mixin(
        (b) => b
          ..name = 'Foo'
          ..docs.addAll(
            const [
              '/// My favorite mixin.',
            ],
          ),
      ),
      equalsDart(r'''
        /// My favorite mixin.
        mixin Foo {}
      '''),
    );
  });

  test('should create a mixin with annotations', () {
    expect(
      Mixin(
        (b) => b
          ..name = 'Foo'
          ..annotations.addAll([
            refer('deprecated'),
            refer('Deprecated').call([literalString('This is an old mixin')])
          ]),
      ),
      equalsDart(r'''
        @deprecated
        @Deprecated('This is an old mixin')
        mixin Foo {}
      '''),
    );
  });

  test('should create a mixin with a generic type', () {
    expect(
      Mixin((b) => b
        ..name = 'List'
        ..types.add(refer('T'))),
      equalsDart(r'''
        mixin List<T> {}
      '''),
    );
  });

  test('should create a mixin with multiple generic types', () {
    expect(
      Mixin(
        (b) => b
          ..name = 'Map'
          ..types.addAll([
            refer('K'),
            refer('V'),
          ]),
      ),
      equalsDart(r'''
        mixin Map<K, V> {}
      '''),
    );
  });

  test('should create a mixin with a bound generic type', () {
    expect(
      Mixin((b) => b
        ..name = 'Comparable'
        ..types.add(TypeReference((b) => b
          ..symbol = 'T'
          ..bound = TypeReference((b) => b
            ..symbol = 'Comparable'
            ..types.add(refer('T').type))))),
      equalsDart(r'''
        mixin Comparable<T extends Comparable<T>> {}
      '''),
    );
  });>
