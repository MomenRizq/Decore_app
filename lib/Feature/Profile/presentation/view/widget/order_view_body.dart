import 'package:decore_app/Feature/Profile/domain/entities/order_item_entity';
import 'package:decore_app/core/utils/constants.dart';
import 'package:decore_app/core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

import 'order_item_card.dart';

class OrderViewBody extends StatelessWidget {
  const OrderViewBody({super.key});

  List<OrderItemEntity> get orders => OrdersItemForTest.orders;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.only(
        top: topPadding,
        left: leftPadding,
        right: rightPadding,
        bottom: 16,
      ),
      itemCount: orders.length + 1,
      itemBuilder: (context, index) {
        if (index == 0) {
          return const CustomAppBar(
            title: "Orders",
            isBackButtonVisible: true,
          );
        }

        return OrderItemCard(item: orders[index - 1]);
      },
    );
  }
}
