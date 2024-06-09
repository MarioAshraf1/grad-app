import 'package:flutter/material.dart';
import 'package:graduation_project/features/auth/views/widgets/register_view_body.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  static String id = 'RegisterScreen';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: RegisterViewBody(),
    );
  }
}
