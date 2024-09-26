import 'package:flutter/material.dart';
import 'package:fs_food_app/pages/login_page.dart';

import '../pages/register_page.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  // initially, show login page
  bool _showLoginPage = true;

  // toggle between login and register page
  void _togglePages() {
    setState(() {
      _showLoginPage = !_showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_showLoginPage) {
      return LoginPage(onTap: _togglePages);
    } else {
      return RegisterPage(onTap: _togglePages);
    }
  }
}
