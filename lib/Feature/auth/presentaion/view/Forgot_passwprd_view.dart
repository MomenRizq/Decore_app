import 'package:decore_app/Feature/auth/presentaion/view/widget/custom_app_bar_auth.dart';
import 'package:flutter/material.dart';

import 'widget/Forgot_password_view_body.dart';

class ForgotPasswprdView extends StatelessWidget {
  const ForgotPasswprdView({super.key});
  static const routeName = 'ForgetPassword';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBarAuth(context, title: "Forgot Password"),
      body: SafeArea(
        child: const ForgotPasswprdViewBody(),
      ),
    );
  }
}
