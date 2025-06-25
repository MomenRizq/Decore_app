import 'package:decore_app/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.hintText,
      required this.textInputType,
      this.suffixIcon,
      this.onSaved,
      this.obscureText = false,
      required this.title,
      this.readonly = false,
      this.color = const Color(0xFFFAF0E6)});
  final String hintText;
  final TextInputType textInputType;
  final Widget? suffixIcon;
  final void Function(String?)? onSaved;
  final bool obscureText;
  final String title;
  final bool readonly;
  final Color color;
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
          readOnly: readonly,
          obscureText: obscureText,
          onSaved: onSaved,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'This field is required';
            }
            return null;
          },
          keyboardType: textInputType,
          decoration: InputDecoration(
            suffixIcon: suffixIcon,
            hintStyle: TextStyles.spartanRegular.copyWith(
              color: Colors.grey.shade400,
            ),
            hintText: hintText,
            filled: true,
            fillColor: color,
            border: buildBorder(),
            enabledBorder: buildBorder(),
          ),
        ),
      ],
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(25),
      borderSide: BorderSide.none,
    );
  }
}
