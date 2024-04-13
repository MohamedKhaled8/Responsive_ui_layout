import 'package:flutter/material.dart';

class CustomItemsViewVirtical extends StatelessWidget {
  const CustomItemsViewVirtical({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        color: Colors.orange,
      ),
    );
  }
}