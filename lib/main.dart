import 'package:chat_app/screens/chat_screen.dart';
import 'package:chat_app/screens/login_screen.dart';
import 'package:chat_app/screens/registration_screen.dart';
import 'package:chat_app/screens/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:  WelcomeScreen.id,
      routes: {
         WelcomeScreen.id: (context) => const WelcomeScreen(),
         RegistrationScreen.id: (context) => const RegistrationScreen(),
         LoginScreen.id: (context) => const LoginScreen(),
         ChatScreen.id: (context) => const ChatScreen(),
      },
    );
  }
}

