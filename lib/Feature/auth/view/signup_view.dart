import 'package:decore_app/core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

import 'widget/signup_view_body.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});
  static const routeName = 'SignupView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, title: 'Create Account'),
      body: SafeArea(
        child: SignupViewBody(),
      ),
    );
  }
}