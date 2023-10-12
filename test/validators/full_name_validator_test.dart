import 'package:fluttely_validators/i18n/i18n.dart';

import 'package:fluttely_validators/fluttely_validators.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Should return thisFieldCanNotBeEmpty on Value Equals null', () {
    final String? fullName = FullNameValidator.validate(null);

    expect(fullName, I18n.strings.thisFieldCanNotBeEmpty);
  });

  test('Should return thisFieldCanNotBeEmpty on Value Equals empty', () {
    final String? fullName = FullNameValidator.validate('');

    expect(fullName, I18n.strings.thisFieldCanNotBeEmpty);
  });

  test('Should return theNameMustBeComplete on Value Equals Kevin', () {
    final String? fullName = FullNameValidator.validate('Kevin');

    expect(fullName, I18n.strings.theNameMustBeComplete);
  });

  test(
      'Should return insertOnlyCharactersFromAToZ on Value Equals Kevin Kobori 1',
      () {
    final String? fullName = FullNameValidator.validate('Kevin Kobori 1');

    expect(fullName, I18n.strings.insertOnlyCharactersFromAToZ);
  });

  test(
      'Should return insertOnlyCharactersFromAToZ on Value Equals Kevin Kobori ?',
      () {
    final String? fullName = FullNameValidator.validate('Kevin Kobori ?');

    expect(fullName, I18n.strings.insertOnlyCharactersFromAToZ);
  });

  test('Should return theNameMustBeComplete on Value Equals Kevin', () {
    final String? fullName = FullNameValidator.validate('Kevin');

    expect(fullName, I18n.strings.theNameMustBeComplete);
  });

  test('Should return NULL on Value Equals Kevin Kobori', () {
    final String? fullName = FullNameValidator.validate('Kevin Kobori');

    expect(fullName, null);
  });
}
