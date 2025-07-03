import 'package:decore_app/core/utils/app_theme.dart';
import 'package:flutter/material.dart';

class GenderSelector extends StatelessWidget {
  final String selectedGender;
  final ValueChanged<String> onChanged;

  const GenderSelector({
    super.key,
    required this.selectedGender,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Gender',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildRadioOption('Male'),
            const SizedBox(width: 30),
            _buildRadioOption('Female'),
          ],
        ),
      ],
    );
  }

  Widget _buildRadioOption(String value) {
    return Container(
       padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          decoration: BoxDecoration(
            color: AppTheme.secondaryColor,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: AppTheme.secondaryColor,
              width: 1,
            ),
          ),
      child: Row(
        children: [
          Radio<String>(
            value: value,
            groupValue: selectedGender,
            activeColor: AppTheme.primaryColor,
            onChanged: (val) {
              if (val != null) onChanged(val);
            },
          ),
          Text(value),
        ],
      ),
    );
  }
}
