import 'package:decore_app/Feature/auth/view/widget/signin_view_body.dart';
import 'package:decore_app/core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class SigninView extends StatelessWidget {
  const SigninView({super.key});
  static const routeName = 'SigninView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(context, title: "Log In" , ),
      body: SafeArea(
        child: SigninViewBody()
      ),
    );
  }
}
