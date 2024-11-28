import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rowbest/features/landing/landing_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Row Best',
      builder: (context, child) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child: child!,
        );
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
          bodyLarge: const TextStyle(
              color: Colors.black, fontSize: 16, fontFamily: 'Cairo'),
          bodyMedium: TextStyle(
            color: Colors.black.withOpacity(0.8),
            fontFamily: 'Cairo',
            fontSize: 14,
          ),
          headlineSmall: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontFamily: 'Cairo',
            fontSize: 18,
          ),
        ),
        primaryColor: const Color(0xffF6BC2F),
        scaffoldBackgroundColor: Colors.white,
        useMaterial3: true,
      ),
      home: const LandingPage(),
    );
  }
}
