import 'package:decore_app/Feature/auth/view/widget/custom_app_bar_auth.dart';
import 'package:flutter/material.dart';

import 'widget/signup_view_body.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});
  static const routeName = 'SignupView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBarAuth(context, title: 'Create Account'),
      body: SafeArea(
        child: SignupViewBody(),
      ),
    );
  }
}