part of fluttely_validators;

class FullNameValidator {
  static String _getInitials(String fullName) {
    List<String> names = fullName.split(' ');
    String initials = '';
    int numWords = 1;
    if (numWords < names.length) {
      numWords = names.length;
    } else {
      return '';
    }
    for (var i = 0; i < numWords; i++) {
      initials += names[i][0];
    }
    return initials;
  }

  static String? validate(String? value) {
    final String? fullName = value;
    if (fullName?.isEmpty == true || fullName == null) {
      return I18n.strings.thisFieldCanNotBeEmpty;
    }

    var initials = _getInitials(fullName);
    String patttern = r'(^[a-zA-Z ]*$)';
    RegExp regExp = RegExp(patttern);

    if (fullName.isEmpty || (fullName.length < 3)) {
      return I18n.strings.enterYourFullName;
    } else if (!regExp.hasMatch(fullName)) {
      return I18n.strings.insertOnlyCharactersFromAToZ;
    } else if ((initials.length < 2) ||
        (initials.length < 2 && fullName.length < 3)) {
      return I18n.strings.theNameMustBeComplete;
    }
    return null;
  }
}
