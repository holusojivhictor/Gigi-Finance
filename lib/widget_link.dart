import 'package:flutter/material.dart';
import 'package:gigi_finance/constants.dart';
import 'package:gigi_finance/pages/drawer/drawer_page.dart';
import 'package:gigi_finance/pages/panel_center/panel_center_page.dart';
import 'package:gigi_finance/pages/panel_left/panel_left_page.dart';
import 'package:gigi_finance/pages/panel_right/panel_right_page.dart';
import 'package:gigi_finance/pages/widgets/app_bar_widget.dart';
import 'package:gigi_finance/responsive_layout.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class WidgetLink extends StatefulWidget {
  @override
  _WidgetLinkState createState() => _WidgetLinkState();
}

class _WidgetLinkState extends State<WidgetLink> {
  int currentIndex = 1;

  List<Widget> _icons = [
    Icon(Icons.add, size: 30),
    Icon(Icons.list, size: 30),
    Icon(Icons.compare_arrows, size: 30),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 100),
        child: (ResponsiveLayout.isTinyLimit(context) ||
                ResponsiveLayout.isTinyHeightLimit(context))
            ? Container()
            : AppBarWidget(),
      ),
      body: ResponsiveLayout(
        tiny: Container(),
        phone: currentIndex == 0
            ? PanelLeftPage()
            : currentIndex == 1
                ? PanelCenterPage()
                : PanelRightPage(),
        tablet: Row(
          children: [
            Expanded(child: PanelLeftPage()),
            Expanded(child: PanelCenterPage()),
          ],
        ),
        largeTablet: Row(
          children: [
            Expanded(child: PanelLeftPage()),
            Expanded(child: PanelCenterPage()),
            Expanded(child: PanelRightPage()),
          ],
        ),
        computer: Row(
          children: [
            Expanded(flex: 2,child: DrawerPage()),
            Expanded(flex: 3,child: PanelLeftPage()),
            Expanded(flex: 3,child: PanelCenterPage()),
            Expanded(flex: 3,child: PanelRightPage()),
          ],
        ),
      ),
      drawer: DrawerPage(),
      bottomNavigationBar: ResponsiveLayout.isPhone(context)
          ? CurvedNavigationBar(
              index: currentIndex,
              backgroundColor: Constants.greyDark,
              items: _icons,
              height: 50,
              onTap: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
          )
          : SizedBox(),
    );
  }
}