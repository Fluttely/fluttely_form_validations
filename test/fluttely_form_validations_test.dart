import 'package:flutter_test/flutter_test.dart';

import 'package:fluttely_form_validations/fluttely_form_validations.dart';

void main() {
  test('1', () {
    final String? fullName = FormValidations.fullName(null);

    expect(fullName, 'this field can not be empty');
  });
  test('1.1', () {
    final String? fullName = FormValidations.fullName('');

    expect(fullName, 'this field can not be empty');
  });
  test('3', () {
    final String? fullName = FormValidations.fullName('Kevin');

    expect(fullName, 'The Name Must Be Complete');
  });
  test('4', () {
    final String? fullName = FormValidations.fullName('Kevin Kobori 1');

    expect(fullName, 'Enter Characters From A To Z');
  });
  test('4.1', () {
    final String? fullName = FormValidations.fullName('Kevin Kobori ?');

    expect(fullName, 'Enter Characters From A To Z');
  });
  test('5', () {
    final String? fullName = FormValidations.fullName('Kevin');

    expect(fullName, 'The Name Must Be Complete');
  });
  test('6', () {
    final String? fullName = FormValidations.fullName('Kevin Kobori');

    expect(fullName, null);
  });
}
