import 'package:extension_dart/extension_dart.dart';

const foo = 'foo';
const bar = 'bar';
const baz = 'baz';

const namesAndAges = {
  foo: 20,
  bar: 25,
  baz: 18,
};

const acceptedNames = [
  foo,
  bar,
];

void testIt() {
  final acceptedAges = namesAndAges.compactMap(
    (e) => acceptedNames.contains(e.key) ? e.value : null,
  );
  print(acceptedAges); // [20, 25]
}

void main() {
  testIt();
}
