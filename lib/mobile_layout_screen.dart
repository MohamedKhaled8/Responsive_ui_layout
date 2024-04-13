import 'package:flutter/material.dart';
import 'package:responsiveui/widgets/build_app_bar.dart';
import 'package:responsiveui/widgets/custom_drower.dart';
import 'package:responsiveui/widgets/custom_grid_view_body.dart';
import 'package:responsiveui/widgets/custom_list_view_body.dart';

class MobileLayout extends StatefulWidget {
  const MobileLayout({super.key});

  @override
  State<MobileLayout> createState() => _MobileLayoutState();
}

class _MobileLayoutState extends State<MobileLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        color: Colors.orange.shade200,
        text: 'Mobile View',
      ),
      drawer: CustomDrawer(
        color: Colors.orange.shade900,
      ),
      backgroundColor: Colors.orange.shade200,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CusomGridViewBody(
              aspectRatio: 2,
              crossAxisCount: 2,
              itemCount: 2,
            ),
            const CustomListViewBody(),
            Container(
              height: 300,
              color: Colors.orange,
              child: const Center(child: Text(" Ectrea Data")),
            ),
          ],
        ),
      ),
    );
  }
}
