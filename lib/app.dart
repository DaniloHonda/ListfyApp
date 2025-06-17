import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'presentation/views/auth/welcome_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Listfy',
      theme: ThemeData(
        useMaterial3: true,
        textTheme: GoogleFonts.chivoTextTheme(),
      ),
      home: const WelcomeView(),
      debugShowCheckedModeBanner: false,
    );
  }
}