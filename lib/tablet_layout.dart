import 'package:flutter/material.dart';
import 'package:responsiveui/widgets/build_app_bar.dart';
import 'package:responsiveui/widgets/custom_drower.dart';
import 'package:responsiveui/widgets/custom_grid_view_body.dart';
import 'package:responsiveui/widgets/custom_list_view_body.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(
        color: Colors.purple.shade400,
      ),
      appBar: buildAppBar(text: "Tablet View", color: Colors.purple.shade400),
      body: Row(
        children: [
          const Expanded(
            flex: 3,
            child: Column(
              children: [
                CusomGridViewBody(
                  aspectRatio: 4,
                  crossAxisCount: 4,
                  itemCount: 4,
                ),
                Expanded(child: CustomListViewBody())
              ],
            ),
          ),
          Expanded(
              flex: 1,
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.orange,
                      child: const Center(child: Text("Extra Data")),
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
