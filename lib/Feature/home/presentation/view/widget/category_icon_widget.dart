  import 'package:decore_app/Feature/categories/presentation/view/widget/category_detiles_view.dart';
import 'package:decore_app/core/utils/app_text_style.dart';
  import 'package:decore_app/core/utils/app_theme.dart';
  import 'package:flutter/material.dart';
  import 'package:flutter_svg/flutter_svg.dart';

  class CategoryIconWidget extends StatefulWidget {
    const CategoryIconWidget({super.key, required this.CategoryIcon});
    final List<String> CategoryIcon;

    @override
    State<CategoryIconWidget> createState() => _CategoryIconWidgetState();
  }

  class _CategoryIconWidgetState extends State<CategoryIconWidget> {
    late final PageController _pageController;

    @override
    void initState() {
      _pageController = PageController(viewportFraction: 0.25);
      super.initState();
    }

    @override
    void dispose() {
      _pageController.dispose();
      super.dispose();
    }

    @override
    Widget build(BuildContext context) {
      return SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Categories',
              style:
                  TextStyles.poppinsSemiBold.copyWith(color: AppTheme.primaryColor , fontSize: 15),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
                width: double.infinity,
                height: 65,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  controller: _pageController,
                  physics: const BouncingScrollPhysics(),
                  itemCount: widget.CategoryIcon.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          CategoryDetilesView.routeName,
                          arguments: widget.CategoryIcon[index],
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Container(
                          height: 65,
                          width: 65,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: AppTheme.secondaryColor,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: SvgPicture.asset(widget.CategoryIcon[index],),
                          )
                              
                        ),
                      ),
                    );
                  },
                ),
              ),
          ],
        ),
      );
    }
  }
