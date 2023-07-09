import 'package:common_dependencies/common_dependencies.dart';
import 'package:flutter/material.dart';
import 'package:models/models.dart';

class LobbyPage extends StatelessWidget {
  const LobbyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: TextButton(
        child: Text('signOut'),
        onPressed: () => context.replaceNamed(AppPages.login.routeName),
      )),
    );
  }
}
