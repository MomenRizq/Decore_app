import 'package:decore_app/Feature/cart/presentation/views/widget/checkout_widgets/payment_option.dart';
import 'package:decore_app/core/utils/app_theme.dart';
import 'package:flutter/material.dart';

class PaymentMethodSelector extends StatefulWidget {
  const PaymentMethodSelector({super.key});

  @override
  State<PaymentMethodSelector> createState() => _PaymentMethodSelectorState();
}

class _PaymentMethodSelectorState extends State<PaymentMethodSelector> {
  String? selectedOption;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppTheme.secondaryColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            PaymentOption(
              value: 'Cash on Delivery',
              groupValue: selectedOption,
              onChanged: (val) => setState(() => selectedOption = val),
            ),
            PaymentOption(
              value: 'Paypal',
              groupValue: selectedOption,
              onChanged: (val) => setState(() => selectedOption = val),
            ),
            PaymentOption(
              value: 'Apple Play',
              groupValue: selectedOption,
              onChanged: (val) => setState(() => selectedOption = val),
            ),
            PaymentOption(
              value: 'Credit Card',
              groupValue: selectedOption,
              onChanged: (val) => setState(() => selectedOption = val),
            ),
          ],
        ),
      ),
    );
  }
}
