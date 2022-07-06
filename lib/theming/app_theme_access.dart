import 'package:lean_ui_kit/theming/app_theme/app_theme.dart';

/// Access point for [AppTheme].
/// Use this class if you want to initialize [AppTheme] of the app.
class AppThemeAccess{

  /// If [currentAppTheme] is in dark mode.
  static bool isDarkMode = false;

  /// Returns the [currentAppTheme].
  /// Throws if [currentAppTheme] == [null].
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

  /// Initializes [currentAppTheme] as [theme].
  static void init({required AppTheme theme}) {
    currentAppTheme = theme;
  }

  /// Initializes [currentAppTheme] as [theme].
  /// Sets [isDarkMode] == [true].
  static void initDarkMode({required AppTheme theme}) {
    currentAppThemeDarkMode = theme;
  }


  /// The current [AppTheme].
  static AppTheme? currentAppTheme;

  /// The current [AppTheme] with [isDarkMode] == [true].
  /// This [AppTheme] should be a dark mode [AppTheme].
  static AppTheme? currentAppThemeDarkMode;
}