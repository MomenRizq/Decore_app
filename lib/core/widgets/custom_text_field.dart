import 'package:decore_app/core/utils/app_text_style.dart';
import 'package:decore_app/core/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.hintText,
      required this.textInputType,
      this.suffixIcon,
      this.onSaved,
      this.obscureText = false, required this.title});
  final String hintText;
  final TextInputType textInputType;
  final Widget? suffixIcon;
  final void Function(String?)? onSaved;
  final bool obscureText;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 3,
      children: [
        Text(
          title,
          style: TextStyles.spartanSemiBold15,
        ),
        TextFormField(
          obscureText: obscureText,
          onSaved: onSaved,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'هذا الحقل مطلوب';
            }
            return null;
          },
          keyboardType: textInputType,
          decoration: InputDecoration(
            suffixIcon: suffixIcon,
            hintStyle: TextStyles.spartanRegular,
            hintText: hintText,
            filled: true,
            fillColor: const Color(0xFFFAF0E6),
            border: buildBorder(),
            enabledBorder: buildBorder(),
          ),
        ),
      ],
    );
  }

  OutlineInputBorder  buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(25),
       borderSide: BorderSide.none,
    );
  }
}
