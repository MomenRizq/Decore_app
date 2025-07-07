import 'package:decore_app/core/utils/app_theme.dart';
import 'package:decore_app/core/widgets/custom_button.dart';
import 'package:decore_app/core/widgets/custom_text_auth.dart';
import 'package:decore_app/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class ForgotPasswprdViewBody extends StatelessWidget {
  const ForgotPasswprdViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 40),
              child: CustomTextAuth(
                title: "reset password?",
                subTitle:
                    "Enter your email address and we will send you a link to reset your password.",
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.8,
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: AppTheme.secondaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(31),
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.08,
                  left: MediaQuery.of(context).size.width * 0.1,
                  right: MediaQuery.of(context).size.width * 0.1,
                  child: Column(
                    children: [
                      CustomTextFormField(
                        title: "Email",
                        color: Colors.white,
                        onSaved: (value) {},
                        hintText: "example@example.com",
                        textInputType: TextInputType.emailAddress,
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                      CustomButton(text: "Next", onPressed: () {})
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
