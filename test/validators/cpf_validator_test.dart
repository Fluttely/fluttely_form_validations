import 'package:fluttely_validators/i18n/i18n.dart';

import 'package:fluttely_validators/fluttely_validators.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Should return thisIsNotAValidCPF on Value Equals null', () {
    final String? fullName = CPFValidator.validate(null);

    expect(fullName, I18n.strings.thisIsNotAValidCPF);
  });

  test('Should return thisIsNotAValidCPF on Value Equals empty', () {
    final String? fullName = CPFValidator.validate('');

    expect(fullName, I18n.strings.thisIsNotAValidCPF);
  });

  test('Should return thisIsNotAValidCPF on Value Equals 33461671000', () {
    final String? fullName = CPFValidator.validate('33461671000');

    expect(fullName, I18n.strings.thisIsNotAValidCPF);
  });

  test('Should return NULL on Value Equals 334.616.710-02', () {
    final String? fullName = CPFValidator.validate('334.616.710-02');

    expect(fullName, null);
  });

  test('Should return NULL on Value Equals 33461671002', () {
    final String? fullName = CPFValidator.validate('33461671002');

    expect(fullName, null);
  });
}
