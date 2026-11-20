import 'package:flutter/material.dart';
import 'package:doctor_profile_ui/Page/doctor_profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DoctorProfile(),
      debugShowCheckedModeBanner: false,
    );
  }
}
