import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:viji_portfolio/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          scaffoldBackgroundColor: const Color(0xFF000515),
          useMaterial3: true,
          textTheme: GoogleFonts.openSansTextTheme(Theme.of(context).textTheme)
              .apply(
                bodyColor: Colors.white,
              )
              .copyWith(
                bodyLarge: const TextStyle(color: Color(0xFF8B8B8D)),
                bodyMedium: const TextStyle(color: Color(0xFF8B8B8D)),
              ),
        ),
        home: const SplashView());
  }
}
