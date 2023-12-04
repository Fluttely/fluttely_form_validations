part of fluttely_validators;

class PhoneValidator {
  static String? validate(String? value) {
    String patttern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
    RegExp regExp = RegExp(patttern);
    if (!regExp.hasMatch(value ?? '')) {
      return I18n.strings.thisIsNotAValidPhone;
    } else {
      return null;
    }
  }
}
