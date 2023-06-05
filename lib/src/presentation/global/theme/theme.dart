import 'package:flutter/material.dart';
import 'package:species/src/presentation/global/colors/colors.dart';

// Light Theme

ThemeData lighTheme({required BuildContext context}) => ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      scaffoldBackgroundColor: lightBackgroundColor,
      //!! APPBAR THEME ////
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        toolbarHeight: 56.0,
        foregroundColor: lightTextColor,
        titleTextStyle: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w400,
          color: lightTextColor,
        ),
        elevation: 0,
      ),
      //!! TEXT THEME  ////
      textTheme: const TextTheme(
        bodyMedium: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: lightTextColor,
        ),
      ),

      //!! DRAWER THEME ////
      drawerTheme: const DrawerThemeData(
        elevation: 0,
        backgroundColor: lightBackgroundColor,
      ),

      //!! TABBAR THEME ////
      tabBarTheme: const TabBarTheme(
        labelColor: lightTextColor,
        labelStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        unselectedLabelStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: unselectedTabbarLabelColor,
        ),
        indicator: UnderlineTabIndicator(
          borderSide: BorderSide(
            width: 3,
          ),
        ),
      ),

      //!! CARD THEME ////
      cardTheme: const CardTheme(
        color: lightCardColor,
        elevation: 0,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1.0,
            color: lightCardBorderColor,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
        ),
      ),

      //!! BOTTOM NAVIGATION BAR THEME ////
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: lightBottomNavigationBarColor,
        elevation: 0,
        selectedIconTheme: IconThemeData(
          size: 24,
        ),
        selectedItemColor: lightBottomNavigationBarSelectedItemColor,
        unselectedItemColor: unselectedTabbarLabelColor,
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),

      //!! BUTTON THEME ////
      // elevatedButtonTheme: ElevatedButtonThemeData(
      //   style: ElevatedButton.styleFrom(
      //     backgroundColor: tertiaryColor,
      //     foregroundColor: whiteColor,
      //     textStyle: const TextStyle(
      //       fontSize: 16,
      //       fontWeight: FontWeight.w500,
      //     ),
      //     shape: RoundedRectangleBorder(
      //       borderRadius: BorderRadius.circular(8),
      //     ),
      //     minimumSize: const Size(double.infinity, 48),
      //   ),
      // ),
    );
