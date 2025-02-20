import 'package:creditsea_flutter_assignment/screens/applicationstatus.dart';
import 'package:creditsea_flutter_assignment/screens/applyforloan.dart';
import 'package:creditsea_flutter_assignment/screens/email_verification.dart';
import 'package:creditsea_flutter_assignment/screens/loanoffer.dart';
import 'package:creditsea_flutter_assignment/screens/pan_detail.dart';
import 'package:creditsea_flutter_assignment/screens/personal_details.dart';
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
      home: const ApplicationStatus(),
    );
  }
}
