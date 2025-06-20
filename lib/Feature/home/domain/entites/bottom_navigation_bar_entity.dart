import '../../../../core/utils/app_images.dart';

class BottomNavigationBarEntity {
  final String Image;

  BottomNavigationBarEntity({required this.Image});
}

List<BottomNavigationBarEntity> get bottomNavigationBarItems => [

  BottomNavigationBarEntity(Image: Assets.imgHome),
  BottomNavigationBarEntity(Image: Assets.imgCategories),
  BottomNavigationBarEntity(Image: Assets.imgCart),
  BottomNavigationBarEntity(Image: Assets.imgWishlist),
  BottomNavigationBarEntity(Image: Assets.imgProfile),
];
