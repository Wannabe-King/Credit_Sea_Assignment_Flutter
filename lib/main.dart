import 'package:creditsea_flutter_assignment/view/screens/welcome.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
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
