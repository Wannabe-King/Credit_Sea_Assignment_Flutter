import 'package:creditsea_flutter_assignment/view/screens/applicationstatus.dart';
import 'package:creditsea_flutter_assignment/view/screens/applyforloan.dart';
import 'package:creditsea_flutter_assignment/view/screens/email_verification.dart';
import 'package:creditsea_flutter_assignment/view/screens/loanoffer.dart';
import 'package:creditsea_flutter_assignment/view/screens/pan_detail.dart';
import 'package:creditsea_flutter_assignment/view/screens/personal_details.dart';
import 'package:creditsea_flutter_assignment/view/screens/welcome.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  await GetStorage.init();
  await Hive.initFlutter();
  await Hive.openBox('userBox');
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
