
import '../navigation/navigation_service.dart';

class AppConstants {
  static AppConstants? _instance;
  static AppConstants get instance {
    if (_instance != null) {
      return _instance!;
    } else {
      _instance = AppConstants.init();
      return _instance!;
    }
  }

  AppConstants.init();

  String get appTitle => "Getx Tutorial";
  String get initialRoute => "/home";
  bool get debugShowCheckedModeBanner => false;
  // get localizationsDelegates => AppLocalizations.localizationsDelegates;
  // get supportedLocales => AppLocalizations.supportedLocales;
  get navigatorKey => NavigationService.navigatorKey;

}
