import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:studenttutorapp/ScreenBeforeLogin.dart';
import 'package:studenttutorapp/firebase_options.dart';
import 'package:studenttutorapp/login_handler.dart';

String role = "";
String username = "";
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
    ProviderScope(
      child: (const MyApp()),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        backgroundColor: Colors.pinkAccent,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.transparent,
          selectedIconTheme: IconThemeData(
            size: 35.0,
            color: Colors.black,
          ),
        ),
      ),
      title: "Tata Digital",
      home: ScreenBeforeLogin(),
    );
  }
}
