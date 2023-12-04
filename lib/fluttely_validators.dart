library fluttely_validators;

import 'i18n/i18n.dart';
import 'package:cpf_cnpj_validator/cpf_validator.dart' as cpf_validator;
export 'i18n/i18n.dart';

part 'validators/full_name_validator.dart';
part 'validators/cpf_validator.dart';
part 'validators/phone_validator.dart';

class FormValidators {
  FormValidators(I18nLanguages language) {
    I18n.load(language: language);
  }

  PersonValidators get person => PersonValidators();
  PhoneValidators get phone => PhoneValidators();
}

class PersonValidators {
  String? fullName(String? value) {
    return FullNameValidator.validate(value);
  }

  String? cpf(String? value) {
    return CPFValidator.validate(value);
  }
}

class PhoneValidators {
  String? phoneBR(String? value) {
    return PhoneValidator.validate(value);
  }
}
