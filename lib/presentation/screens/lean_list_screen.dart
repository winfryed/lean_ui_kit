
import 'package:flutter/material.dart';
import 'package:lean_ui_kit/presentation/screens/lean_screen.dart';

abstract class LeanListScreen extends LeanScreen{
  const LeanListScreen({super.key});


  @override
  Widget buildBody(BuildContext context) {
    return ListView(children: children(context),);
  }

  List<Widget> children(BuildContext context);

}