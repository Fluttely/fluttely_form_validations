import 'package:fluttely_validators/fluttely_validators.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Should return thisIsNotAValidPhone on Value Equals null', () {
    final String? phone = PhoneValidator.validate(null);

    expect(phone, I18n.strings.thisIsNotAValidPhone);
  });

  test('Should return thisIsNotAValidPhone on Value Equals empty', () {
    final String? phone = PhoneValidator.validate('');

    expect(phone, I18n.strings.thisIsNotAValidPhone);
  });

  test('Should return thisIsNotAValidPhone on Value Equals 5561991200684', () {
    final String? phone = PhoneValidator.validate('5561991200684');

    expect(phone, I18n.strings.thisIsNotAValidPhone);
  });

  test('Should return NULL on Value Equals 061991200684', () {
    final String? phone = PhoneValidator.validate('061991200684');

    expect(phone, null);
  });

  test('Should return NULL on Value Equals 61991200684', () {
    final String? phone = PhoneValidator.validate('61991200684');

    expect(phone, null);
  });
}
