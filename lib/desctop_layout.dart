import 'package:flutter/material.dart';
import 'package:responsiveui/widgets/build_app_bar.dart';
import 'package:responsiveui/widgets/custom_drower.dart';
import 'package:responsiveui/widgets/custom_grid_view_body.dart';
import 'package:responsiveui/widgets/custom_list_view_body.dart';

class DesctopLayout extends StatelessWidget {
  const DesctopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(text: "Desctop View", color: Colors.grey),
      body: Row(
        children: [
          const CustomDrawer(
            color: Colors.grey,
          ),
          const Expanded(
            flex: 2,
            child: Column(
              children: [
                CusomGridViewBody(
                  aspectRatio: 4,
                  crossAxisCount: 6,
                  itemCount: 6,
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
                      child: const Center(child: Text(" Ectrea Data")),
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
