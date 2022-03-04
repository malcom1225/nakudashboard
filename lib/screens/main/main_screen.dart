import 'package:admin/controllers/MenuController.dart';
import 'package:admin/responsive.dart';
import 'package:admin/screens/dashboard/dashboard_screen.dart';
import 'package:admin/screens/main/components/side_menu.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: context.read<MenuController>().scaffoldKey,
        drawer: SideMenu(),
        body: SafeArea(
            child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          if (Responsive.isDesktop(context))
            Expanded(
                //? default flex is 1 so this take 1/6 of screen
                child: SideMenu()),
          Expanded(
              //? this will take 5/6 of screen
              flex: 5,
              child: DashboardScreen()),
        ])));
  }
}
