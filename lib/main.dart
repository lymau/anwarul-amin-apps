import 'package:flutter/material.dart';
import 'package:santri_ui/views/login.dart';
import 'package:santri_ui/views/signup.dart';

void main() {
  runApp(const SantriUI());
}

class SantriUI extends StatelessWidget {
  const SantriUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SignupPage());
  }
}
