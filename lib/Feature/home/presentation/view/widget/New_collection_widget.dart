import 'package:decore_app/Feature/home/presentation/view/widget/new_collection_item.dart';
import 'package:decore_app/core/utils/app_text_style.dart';
import 'package:decore_app/core/utils/app_theme.dart';
import 'package:flutter/material.dart';

class NewCollectionWidget extends StatelessWidget {
  const NewCollectionWidget({super.key});


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'New Collection',
            style: TextStyles.poppinsSemiBold
                .copyWith(color: AppTheme.primaryColor, fontSize: 15),
          ),
          SizedBox(
            height: 15,
          ),
           Center(
             child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.5, 
              child: GridView.builder(
                itemCount: 2,
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.all(2),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                  childAspectRatio: 0.65,
                ),
                itemBuilder: (context, index) => const NewCollectionItem(),
              ),
                       ),
           ),
        ],
      ),
    );
  }
}
