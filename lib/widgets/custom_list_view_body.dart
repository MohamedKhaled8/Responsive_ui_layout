import 'package:flutter/material.dart';
import 'package:responsiveui/widgets/custom_items_view_vertical.dart';

class CustomListViewBody extends StatelessWidget {
  const CustomListViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemCount: 5,
        itemBuilder: (context, index) {
          return const CustomItemsViewVirtical();
        });
  }
}
