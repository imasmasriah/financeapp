import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const FinanceMateApp());
}

class FinanceMateApp extends StatelessWidget {
  const FinanceMateApp({super.key});

  @override
  Widget build(BuildContext context) {
    const Color softPink = Color(0xFFFFC1D9);
    const Color roseGold = Color(0xFFD4A5A5);
    const Color blush = Color(0xFFF8E8EE);
    const Color background = Color(0xFFFAFAFA);
    const Color textDark = Color(0xFF444444);
    const Color textLight = Color(0xFF757575);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Finance Mate',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: background,

        colorScheme: ColorScheme.fromSeed(
          seedColor: roseGold,
          primary: roseGold,
          secondary: softPink,
          background: background,
          surface: Colors.white,
        ),

        fontFamily: 'Poppins',
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: textDark,
          ),
          displayMedium: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: textDark,
          ),
          bodyLarge: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: textDark,
          ),
          bodyMedium: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: textLight,
          ),
          labelLarge: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: textDark,
          ),
        ),

        appBarTheme: const AppBarTheme(
          backgroundColor: blush,
          elevation: 3,
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: textDark,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          iconTheme: IconThemeData(color: textDark),
        ),

        // ✅ FIX DI SINI — pakai CardThemeData
        cardTheme: const CardThemeData(
          color: Colors.white,
          elevation: 3,
          shadowColor: Color(0x22000000),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(18)),
          ),
        ),

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: roseGold,
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              letterSpacing: 0.5,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 14),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            elevation: 3,
          ),
        ),

        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: roseGold,
          foregroundColor: Colors.white,
          elevation: 5,
        ),

        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
          contentPadding: const EdgeInsets.symmetric(
            vertical: 12,
            horizontal: 16,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: softPink),
            borderRadius: BorderRadius.circular(14),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: roseGold, width: 2),
            borderRadius: BorderRadius.circular(14),
          ),
          labelStyle: const TextStyle(color: textLight),
        ),

        splashFactory: InkRipple.splashFactory,
        splashColor: softPink.withOpacity(0.1),
        highlightColor: softPink.withOpacity(0.05),
      ),
      home: const SplashScreen(),
    );
  }
}
