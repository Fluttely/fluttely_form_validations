library fluttely_form_validations;

class FormValidations {
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

  static String? fullName(String? val) {
    final String? fullName = val;
    if (fullName?.isEmpty == true) return 'this field can not be empty';
    if (fullName == null) return 'this field can not be empty';

    var initials = _getInitials(fullName);
    String patttern = r'(^[a-zA-Z ]*$)';
    RegExp regExp = RegExp(patttern);

    if (fullName.isEmpty || (fullName.length < 3)) {
      return 'Enter Your Full Name';
    } else if (!regExp.hasMatch(fullName)) {
      return 'Enter Characters From A To Z';
    } else if ((initials.length < 2) ||
        (initials.length < 2 && fullName.length < 3)) {
      return 'The Name Must Be Complete';
    }
    return null;
  }
}
