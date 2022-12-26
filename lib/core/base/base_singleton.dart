
import 'package:getx_tutorial/features/constants/app_routes.dart';

import '../constants/app_constants.dart';
import '../constants/icon_constants.dart';
import '../helpers/ui_globals.dart';
import '../theme/color/my_colors.dart';
import '../theme/my_theme.dart';
import '../theme/text/my_texts.dart';
import '../utils/app_validators.dart';

abstract class BaseSingleton {
  MyColors get colors => MyColors.instance;
  MyTexts get texts => MyTexts.instance;
  MyTheme get theme => MyTheme.instance;
  UIGlobals get uiGlobals => UIGlobals.instance;
  AppValidators get validators => AppValidators.instance;
  AppConstants get constants => AppConstants.instance;
  IconConstants get icons => IconConstants.instance;
  AppRoutes get routes => AppRoutes.instance;
}