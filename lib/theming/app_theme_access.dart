import 'package:lean_ui_kit/theming/app_theme/app_theme.dart';

class AppThemeAccess{
  static bool isDarkMode = false;

  static AppTheme get theme{
    if(currentAppTheme == null) {
      throw StateError("You have to init the AppThemeAccess before access.");
    }
    if(!isDarkMode) {
      return currentAppTheme as AppTheme;
    }
    if(currentAppThemeDarkMode == null) {
      throw StateError("You have to init the AppThemeAccess dark mode before access.");
    }
    return currentAppThemeDarkMode as AppTheme;
  }

  static void init({required AppTheme theme}) {
    currentAppTheme = theme;
  }
  static void initDarkMode({required AppTheme theme}) {
    currentAppTheme = theme;
  }



  static AppTheme? currentAppTheme;
  static AppTheme? currentAppThemeDarkMode;
}