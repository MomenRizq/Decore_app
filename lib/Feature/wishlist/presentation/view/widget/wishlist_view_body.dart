import 'package:decore_app/Feature/wishlist/presentation/view/widget/empty_wishlist_view.dart';
import 'package:decore_app/Feature/wishlist/presentation/view/widget/full_wishlist_view.dart';
import 'package:decore_app/core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../cubit/wishlist_cubit.dart';
import '../../cubit/wishlist_state.dart';

class WishlistViewBody extends StatefulWidget {
  const WishlistViewBody({super.key});

  @override
  State<WishlistViewBody> createState() => _WishlistViewBodyState();
}

class _WishlistViewBodyState extends State<WishlistViewBody> {
  @override
  void initState() {
    super.initState();
    // تحميل العناصر عند فتح الصفحة لأول مرة
    context.read<WishlistCubit>().loadWishlist();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppBar(title: "Wishlist"),
        Expanded(
          child: BlocBuilder<WishlistCubit, WishlistState>(
            builder: (context, state) {
              if (state is WishlistLoading) {
                return const Center(child: CircularProgressIndicator());
              } else if (state is WishlistFailure) {
                return Center(
                  child: Text(
                    state.message,
                    style: const TextStyle(color: Colors.red),
                  ),
                );
              } else if (state is WishlistEmpty) {
                return const EmptyWishlistView();
              } else if (state is WishlistLoaded) {
                return FullWishlistView(items: state.items);
              } else {
                return const SizedBox(); // حالة مبدئية فارغة
              }
            },
          ),
        ),
      ],
    );
  }
}
