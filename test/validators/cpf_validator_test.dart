import 'package:fluttely_validators/fluttely_validators.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Should return thisIsNotAValidCPF on Value Equals null', () {
    final String? cpf = CPFValidator.validate(null);

    expect(cpf, I18n.strings.thisIsNotAValidCPF);
  });

  test('Should return thisIsNotAValidCPF on Value Equals empty', () {
    final String? cpf = CPFValidator.validate('');

    expect(cpf, I18n.strings.thisIsNotAValidCPF);
  });

  test('Should return thisIsNotAValidCPF on Value Equals 33461671000', () {
    final String? cpf = CPFValidator.validate('33461671000');

    expect(cpf, I18n.strings.thisIsNotAValidCPF);
  });

  test('Should return NULL on Value Equals 334.616.710-02', () {
    final String? cpf = CPFValidator.validate('334.616.710-02');

    expect(cpf, null);
  });

  test('Should return NULL on Value Equals 33461671002', () {
    final String? cpf = CPFValidator.validate('33461671002');

    expect(cpf, null);
  });
}
