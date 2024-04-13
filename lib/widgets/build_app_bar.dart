 import 'package:flutter/material.dart';

AppBar buildAppBar({required String text, required Color color}) {
    return AppBar(
      backgroundColor: color,
      title: Text(text),
      centerTitle: true,
    );
  }