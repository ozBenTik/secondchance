import 'package:common_dependencies/common_dependencies.dart';
import 'package:flutter/material.dart';
import 'package:models/models.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'email',
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'password',
              ),
            ),
          ),
          TextButton(
            onPressed: () => context.replaceNamed(AppPages.lobby.routeName),
            child: const Text('login'),
          ),
        ],
      ),
    );
  }
}
