import 'package:creditsea_flutter_assignment/screens/welcome.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CreditSea',
      debugShowCheckedModeBanner: false,
      home: const SignInPage(),
    );
  }
}
