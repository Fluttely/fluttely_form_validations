import 'en_us.dart';
import 'pt_br.dart';
import 'translation.dart';

enum I18nLanguages {
  enUS,
  ptBR,
}

class I18n {
  static Translation strings = EnUs();

  static void load({required I18nLanguages language}) {
    switch (language) {
      case I18nLanguages.enUS:
        strings = EnUs();
        break;
      case I18nLanguages.ptBR:
        strings = PtBr();
        break;
      default:
        strings = EnUs();
        break;
    }
  }
}
