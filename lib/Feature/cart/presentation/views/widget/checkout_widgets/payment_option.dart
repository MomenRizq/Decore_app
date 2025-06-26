import 'package:decore_app/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:decore_app/core/utils/app_theme.dart';

class PaymentOption extends StatelessWidget {
  final String value;
  final String? extraInfo;
  final String? groupValue;
  final ValueChanged<String?> onChanged;

  const PaymentOption({
    super.key,
    required this.value,
    required this.groupValue,
    required this.onChanged,
    this.extraInfo,
  });
  @override
  Widget build(BuildContext context) {
    return RadioListTile<String>(
      value: value,
    
      groupValue: groupValue,
      onChanged: onChanged,
      contentPadding: EdgeInsets.zero,
      activeColor: AppTheme.primaryColor,
      title: Text(value , style: TextStyles.poppinsRegular),
    );
  }
}
