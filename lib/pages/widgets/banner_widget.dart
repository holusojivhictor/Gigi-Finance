import 'package:gigi_finance/responsive_layout.dart';
import 'package:flutter/material.dart';

class BannerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget theBigBox(List<Widget> widgets) => Card(
      child: Row(children: widgets),
    );
    Widget box1() => ListTile(
      leading: Icon(Icons.book),
      title: Text("Yoo"),
      subtitle: Text("Loopy"),
      trailing: Chip(label: Text("4,000")),
    );
    Widget box2() => ListTile(
      leading: Icon(Icons.book),
      title: Text("Yoo"),
      subtitle: Text("Loop"),
      trailing: Chip(label: Text("4,000")),
    );
    Widget box3() => ListTile(
      leading: Icon(Icons.book),
      title: Text("Yoo"),
      subtitle: Text("Loops"),
      trailing: Chip(label: Text("4,000")),
    );
    return ResponsiveLayout(
        tiny: Container(),
        phone: theBigBox([box1()]),
        tablet: theBigBox([box1()]),
        largeTablet: theBigBox([box1(), box2()]),
        computer: theBigBox([box1(), box2(), box3()]),
    );
  }
}