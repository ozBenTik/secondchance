import 'package:common_dependencies/common_dependencies.dart';
import 'package:flutter/material.dart';
import 'package:models/models.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  static final _formKey = GlobalKey<FormState>();

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late bool _passwordVisible;
  late bool presentLoading;

  bool isValidEmail(String? email) => email != null
      ? RegExp(
              r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
          .hasMatch(email)
      : false;

  @override
  void initState() {
    _passwordVisible = false;
    presentLoading = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      child: Form(
        key: LoginPage._formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'email',
              ),
              validator: (input) =>
                  isValidEmail(input) ? null : "Check your email",
            ),
            TextFormField(
              obscureText: !_passwordVisible,
              validator: (input) =>
                  input?.isNotEmpty == true ? null : "Fill your password",
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                hintText: 'password',
                suffixIcon: IconButton(
                  icon: Icon(
                    _passwordVisible ? Icons.visibility : Icons.visibility_off,
                    color: Theme.of(context).primaryColorDark,
                  ),
                  onPressed: () {
                    setState(() {
                      _passwordVisible = !_passwordVisible;
                    });
                  },
                ),
              ),
            ),
            IgnorePointer(
              ignoring: presentLoading,
              child: ElevatedButton(
                onPressed: () {
                  if (LoginPage._formKey.currentState!.validate()) {
                    context.replaceNamed(AppPages.lobby.routeName);
                  }
                },
                child: presentLoading
                    ? const CircularProgressIndicator()
                    : const Text('login'),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
