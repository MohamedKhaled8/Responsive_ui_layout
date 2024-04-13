import 'custom_items_view_grid.dart';
import 'package:flutter/material.dart';


class CusomGridViewBody extends StatelessWidget {
  final double aspectRatio;
  final int crossAxisCount;
  final int itemCount;
  const CusomGridViewBody({
    Key? key,
    required this.aspectRatio,
    required this.crossAxisCount,
    required this.itemCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: aspectRatio,
      child: SizedBox(
        width: double.infinity,
        child: GridView.builder(
            gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossAxisCount),
            itemCount: itemCount,
            itemBuilder: (context, index) {
              return const CustomItemsViewGrid();
            }),
      ),
    );
  }
}
