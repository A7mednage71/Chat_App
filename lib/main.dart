import 'package:chatapp_final/Screens/Home_screen.dart';
import 'package:chatapp_final/Screens/Login_page.dart';
import 'package:chatapp_final/Screens/Register_page.dart';
import 'package:chatapp_final/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ChatApp());
}

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        Login_page.id: (context) => Login_page(),
        Home_Screen.id: (context) => Home_Screen(),
        Sign_page.id: (context) => Home_Screen(),
      },
      home: Sign_page(),
    );
  }
}
