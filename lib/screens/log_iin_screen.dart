import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/text_manager.dart';
import 'package:food_delivery_app/widgets/text_form_fieldwidgert.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailcontroller = TextEditingController();
    TextEditingController passwordcontroller = TextEditingController();
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: [
          Icon(
            Icons.lock_open_outlined,
            size: 100,
            color: Theme.of(context).colorScheme.inversePrimary,
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            TextManager.welcometxt,
            style: TextStyle(
              color: Theme.of(context).colorScheme.inversePrimary,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          TextFormFieldwidget(
            ispassword: false,
            label: "Email",
            controller: emailcontroller,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please ente  the  password';
              }
              return null;
            },
          ),
          SizedBox(
            height: 12,
          ),
          TextFormFieldwidget(
              ispassword: true,
              label: "Password",
              controller: passwordcontroller,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please ente  the  password';
                }
                return null;
              }),
        ],
      ),
    );
  }
}
