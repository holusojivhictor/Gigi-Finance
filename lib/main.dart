import 'package:flutter/material.dart';
import 'package:gigi_finance/constants.dart';
import 'package:gigi_finance/widget_link.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(GigiFinance());
}

class GigiFinance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Admin Panel',
      theme: ThemeData(
        accentColor: Constants.greyLight,
        textTheme: GoogleFonts.latoTextTheme(Theme.of(context).textTheme),
        scaffoldBackgroundColor: Constants.greyDark,
        primarySwatch: Colors.blue,
        canvasColor: Constants.greyLight,
      ),
      home: WidgetLink(),
    );
  }
}

