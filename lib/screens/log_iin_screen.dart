import 'package:flutter/material.dart';

class LogInScreen extends StatelessWidget{
  const LogInScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Log In'),
      ),
      body: const Center(
        child: Text('Log In Screen'),
      ),
    );
  }
}