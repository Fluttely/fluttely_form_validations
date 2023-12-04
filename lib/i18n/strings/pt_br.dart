import 'translation.dart';

class PtBr implements Translation {
  /// FullNameValidator
  @override
  String get insertOnlyCharactersFromAToZ =>
      'Insira apenas caracteres de A a Z!';

  @override
  String get enterYourFullName => 'O nome deve ser completo!';

  @override
  String get theNameMustBeComplete => 'Preencha com o nome completo!';

  @override
  String get thisFieldCanNotBeEmpty => 'Este campo não pode ser vazio';

  /// CPFValidator
  @override
  String get thisIsNotAValidCPF => 'Este não é um CPF válido!';

  /// PhoneValidator
  @override
  String get thisIsNotAValidPhone => 'Este não é um telefone válido!';
}
