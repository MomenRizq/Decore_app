import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../core/utils/app_text_style.dart';



class TermsAndConditionsWidget extends StatefulWidget {
  const TermsAndConditionsWidget({super.key});

  @override
  State<TermsAndConditionsWidget> createState() =>
      _TermsAndConditionsWidgetState();
}

class _TermsAndConditionsWidgetState extends State<TermsAndConditionsWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.7,
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'By continuing, you agree to ',
                  style: TextStyles.spartanRegular  
                ),
                TextSpan(
                  text: 'Terms of Use',
                  style: TextStyles.spartanSemiBold
                ),
                const TextSpan(
                  text: ' and ',
                  style: TextStyles.spartanRegular,
                ),
                TextSpan(
                  text: 'Privacy Policy.',
                  style: TextStyles.spartanSemiBold
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}