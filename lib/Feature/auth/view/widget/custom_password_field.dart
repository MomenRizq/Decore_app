import 'package:decore_app/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';


class PasswordField extends StatefulWidget {
  const PasswordField({
    super.key,
    this.onSaved, required this.title,
  });

  final void Function(String?)? onSaved;
  final String title ; 

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      title: widget.title,
      obscureText: obscureText,
      onSaved: widget.onSaved,
      suffixIcon: GestureDetector(
        onTap: () {
          obscureText = !obscureText;
          setState(() {});
        },
        child: obscureText
            ? const Icon(
                Icons.remove_red_eye,
                color: Color(0xffC9CECF),
              )
            : const Icon(
                Icons.visibility_off,
                color: Color(0xffC9CECF),
              ),
      ),
      hintText: '● ● ● ● ● ● ● ● ● ● ●',
      textInputType: TextInputType.visiblePassword,
    );
  }
}