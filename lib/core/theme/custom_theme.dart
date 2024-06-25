import 'package:flutter/material.dart';

import 'repo_count_color.dart';

ColorScheme colorScheme(Brightness brightness) => ColorScheme.fromSeed(
      seedColor: Colors.blue,
      brightness: brightness,
    );

ThemeData lightTheme = ThemeData(
    extensions: const <ThemeExtension<dynamic>>[
      CountBackgroundColor(
        starColor: Color.fromARGB(255, 255, 249, 196),
        watcherColor: Color.fromARGB(255, 227, 242, 253),
        forkColor: Color.fromARGB(255, 232, 245, 233),
        issueColor: Color.fromARGB(255, 255, 243, 224),
      ),
    ],
    // Iterable<Adaptation<Object>>? adaptations,
    // bool? applyElevationOverlayColor,
    // NoDefaultCupertinoThemeData? cupertinoOverrideTheme,
    // Iterable<ThemeExtension<dynamic>>? extensions,
    // InputDecorationTheme? inputDecorationTheme,
    // MaterialTapTargetSize? materialTapTargetSize,

    // ios風画面遷移に統一
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
      },
    ),
    // TargetPlatform? platform,
    // ScrollbarThemeData? scrollbarTheme,
    // InteractiveInkFeatureFactory? splashFactory,

    useMaterial3: true,
    // VisualDensity? visualDensity,
    // Brightness? brightness,
    // Color? canvasColor,
    // Color? cardColor,

    colorScheme: colorScheme(Brightness.light),
    // Color? colorSchemeSeed,
    // Color? dialogBackgroundColor,
    // Color? disabledColor,
    // Color? dividerColor,
    // Color? focusColor,
    // Color? highlightColor,
    // Color? hintColor,
    // Color? hoverColor,
    // Color? indicatorColor,
    // Color? primaryColor,
    // Color? primaryColorDark,
    // Color? primaryColorLight,
    // MaterialColor? primarySwatch,
    // Color? scaffoldBackgroundColor,
    // Color? secondaryHeaderColor,
    // Color? shadowColor,
    // Color? splashColor,
    // Color? unselectedWidgetColor,
    // String? fontFamily,
    // List<String>? fontFamilyFallback,
    // String? package,
    // IconThemeData? iconTheme,
    // IconThemeData? primaryIconTheme,
    // TextTheme? primaryTextTheme,
    // TextTheme? textTheme,
    // Typography? typography,
    // ActionIconThemeData? actionIconTheme,
    appBarTheme: AppBarTheme(
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        backgroundColor: colorScheme(Brightness.light).surface,
        // foregroundColor: colorScheme(Brightness.light).surface,
        titleTextStyle: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: colorScheme(Brightness.light).onSurface))
    // BadgeThemeData? badgeTheme,
    // MaterialBannerThemeData? bannerTheme,
    // BottomAppBarTheme? bottomAppBarTheme,
    // BottomNavigationBarThemeData? bottomNavigationBarTheme,
    // BottomSheetThemeData? bottomSheetTheme,
    // ButtonBarThemeData? buttonBarTheme,
    // ButtonThemeData? buttonTheme,
    // CardTheme? cardTheme,
    // CheckboxThemeData? checkboxTheme,
    // ChipThemeData? chipTheme,
    // DataTableThemeData? dataTableTheme,
    // DatePickerThemeData? datePickerTheme,
    // DialogTheme? dialogTheme,
    // DividerThemeData? dividerTheme,
    // DrawerThemeData? drawerTheme,
    // DropdownMenuThemeData? dropdownMenuTheme,
    // ElevatedButtonThemeData? elevatedButtonTheme,
    // ExpansionTileThemeData? expansionTileTheme,
    // FilledButtonThemeData? filledButtonTheme,
    // FloatingActionButtonThemeData? floatingActionButtonTheme,
    // IconButtonThemeData? iconButtonTheme,
    // ListTileThemeData? listTileTheme,
    // MenuBarThemeData? menuBarTheme,
    // MenuButtonThemeData? menuButtonTheme,
    // MenuThemeData? menuTheme,
    // NavigationBarThemeData? navigationBarTheme,
    // NavigationDrawerThemeData? navigationDrawerTheme,
    // NavigationRailThemeData? navigationRailTheme,
    // OutlinedButtonThemeData? outlinedButtonTheme,
    // PopupMenuThemeData? popupMenuTheme,
    // ProgressIndicatorThemeData? progressIndicatorTheme,
    // RadioThemeData? radioTheme,
    // SearchBarThemeData? searchBarTheme,
    // SearchViewThemeData? searchViewTheme,
    // SegmentedButtonThemeData? segmentedButtonTheme,
    // SliderThemeData? sliderTheme,
    // SnackBarThemeData? snackBarTheme,
    // SwitchThemeData? switchTheme,
    // TabBarTheme? tabBarTheme,
    // TextButtonThemeData? textButtonTheme,
    // TextSelectionThemeData? textSelectionTheme,
    // TimePickerThemeData? timePickerTheme,
    // ToggleButtonsThemeData? toggleButtonsTheme,
    // TooltipThemeData? tooltipTheme,
    );

ThemeData darkTheme = ThemeData.dark(useMaterial3: true).copyWith(
  extensions: const <ThemeExtension<dynamic>>[
    CountBackgroundColor(
      starColor: Color.fromARGB(255, 66, 66, 29),
      watcherColor: Color.fromARGB(255, 27, 54, 93),
      forkColor: Color.fromARGB(255, 27, 94, 32),
      issueColor: Color.fromARGB(255, 93, 64, 55),
    ),
  ],
  // ios風画面遷移に統一
  pageTransitionsTheme: const PageTransitionsTheme(
    builders: {
      TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      TargetPlatform.android: CupertinoPageTransitionsBuilder(),
    },
  ),
  colorScheme: colorScheme(Brightness.dark),
  appBarTheme: AppBarTheme(
    surfaceTintColor: Colors.transparent,
    elevation: 0,
    backgroundColor: colorScheme(Brightness.dark).surface,
    // foregroundColor: colorScheme(Brightness.dark).surface,
    titleTextStyle: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: colorScheme(Brightness.dark).onSurface),
  ),
);
