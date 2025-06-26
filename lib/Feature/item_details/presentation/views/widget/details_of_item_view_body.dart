import 'package:decore_app/core/utils/constants.dart';
import 'package:decore_app/Feature/item_details/presentation/views/widget/details_of_item.dart';
import 'package:decore_app/core/widgets/custom_app_bar.dart';
import 'package:decore_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class DetailsOfItemViewBody extends StatelessWidget {
  const DetailsOfItemViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Padding(
        padding: const EdgeInsets.only(
          left: leftPadding,
          right: rightPadding,
          top: topPadding,
         ),
        child: SingleChildScrollView(
          child: Column(
            children: [
             CustomAppBar(
                title: 'item',
                isBackButtonVisible: true,
              ),
              const SizedBox(height: 20),
              DetailsOfItem(),
              const SizedBox(height: 30),
              CustomButton(text: 'Add to cart', onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
