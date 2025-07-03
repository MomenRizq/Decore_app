import 'package:decore_app/Feature/Profile/presentation/view/widget/gender_selector.dart';
import 'package:decore_app/Feature/home/presentation/view/main_view.dart';
import 'package:decore_app/core/widgets/custom_app_bar.dart';
import 'package:decore_app/core/widgets/custom_button.dart';
import 'package:decore_app/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

import 'custom_avatar.dart';

class EditProfileViewBody extends StatefulWidget {
  const EditProfileViewBody({super.key});

  @override
  State<EditProfileViewBody> createState() => _EditProfileViewBodyState();
}

class _EditProfileViewBodyState extends State<EditProfileViewBody> {
  final formKey = GlobalKey<FormState>();
  late String fullName, email, phone, birthDate;
  String gender = 'Female';
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 30),
            CustomAppBar(
              title: 'Edit Profile',
              isBackButtonVisible: true,
            ),
            const SizedBox(height: 20),
            CustomAvatar(),
            const SizedBox(height: 24),
            Form(
                key: formKey,
                child: Column(
                  children: [
                    CustomTextFormField(
                      title: "Full Name",
                      onSaved: (value) {
                        fullName = value!;
                      },
                      hintText: "full name",
                      textInputType: TextInputType.name,
                    ),
                    CustomTextFormField(
                      title: "Email",
                      onSaved: (value) {
                        email = value!;
                      },
                      hintText: "example@example.com",
                      textInputType: TextInputType.emailAddress,
                    ),
                    CustomTextFormField(
                      title: "Phone",
                      onSaved: (value) {
                        phone = value!;
                      },
                      hintText: "phone number",
                      textInputType: TextInputType.phone,
                    ),
                    CustomTextFormField(
                      title: "Birth Date",
                      onSaved: (value) {
                        birthDate = value!;
                      },
                      hintText: "birth date",
                      textInputType: TextInputType.datetime,
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    GenderSelector(
                      selectedGender: gender,
                      onChanged: (val) {
                        setState(() {
                          gender = val;
                        });
                      },
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    CustomButton(
                        text: 'Save Changes',
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            formKey.currentState!.save();
                            Navigator.of(context).pushNamed(MainView.routeName);
                          } else {
                            setState(() {});
                          }
                        }),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  ],
                )),
          ],
        ),
      );
  }
}