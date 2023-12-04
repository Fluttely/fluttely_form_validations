import 'translation.dart';

class EnUs implements Translation {
  /// FullNameValidator
  @override
  String get insertOnlyCharactersFromAToZ =>
      'Insert only Characters From A To Z';

  @override
  String get enterYourFullName => 'Enter Your Full Name';

  @override
  String get theNameMustBeComplete => 'The Name Must Be Complete';

  @override
  String get thisFieldCanNotBeEmpty => 'this field can not be empty';

  /// CPFValidator
  @override
  String get thisIsNotAValidCPF => 'This is not a valid CPF!';

  /// PhoneValidator
  @override
  String get thisIsNotAValidPhone => 'This is not a valid phone!';
}
