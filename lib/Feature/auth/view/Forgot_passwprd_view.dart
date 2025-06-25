import 'package:decore_app/core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

import 'widget/Forgot_password_view_body.dart';

class ForgotPasswprdView extends StatelessWidget {
  const ForgotPasswprdView({super.key});
  static const routeName = 'ForgetPassword';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, title: "Forgot Password"),
      body: SafeArea(
        child: const ForgotPasswprdViewBody(),
      ),
    );
  }
}
