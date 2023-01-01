
import 'package:get/get.dart';

import 'en.dart';
import 'tr.dart';

class Langs extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    "en_US": En().messages,
    "tr_TR": Tr().messages,
  };
}