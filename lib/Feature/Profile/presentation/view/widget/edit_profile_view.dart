import 'package:decore_app/Feature/Profile/presentation/view/widget/edit_profile_view_body.dart';
import 'package:decore_app/Feature/Profile/presentation/view/widget/gender_selector.dart';
import 'package:decore_app/Feature/home/presentation/view/main_view.dart';
import 'package:decore_app/core/widgets/custom_app_bar.dart';
import 'package:decore_app/core/widgets/custom_button.dart';
import 'package:decore_app/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class EditProfileView extends StatelessWidget {
  const EditProfileView({super.key});
  static const String routeName = '/editProfile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditProfileViewBody()
    );
  }
}
