import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/text_manager.dart';
import 'package:food_delivery_app/screens/home_screen.dart';
import 'package:food_delivery_app/widgets/m_button.dart';
import 'package:food_delivery_app/widgets/text_form_fieldwidgert.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  @override
  void dispose() {
    emailcontroller.dispose();
    passwordcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Icon(
              Icons.lock_open_outlined,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            const SizedBox(
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
            const SizedBox(
              height: 25,
            ),
            Form(
                key: _formKey,
                child: Column(
                  children: [
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
                    const SizedBox(
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
                )),
            const SizedBox(height: 25),
            MyButtonWidget(
                title: TextManager.welcometxt,
                ontap: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()),
                    );
                  }
                },
                borderRadius: 16,
                padding: const EdgeInsets.all(20)),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: TextManager.uhaveaccounttxt,
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary)),
              TextSpan(
                  text: TextManager.logintxt,
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LogInScreen(),
                        ),
                      );
                    })
            ]))
          ],
        ),
      ),
    );
  }
}
