part of fluttely_validators;

class CPFValidator {
  static String? validate(String? value) {
    final isValidCPF = cpf_validator.CPFValidator.isValid(value);
    if (!isValidCPF) {
      return I18n.strings.thisIsNotAValidCPF;
    } else {
      return null;
    }
  }
}