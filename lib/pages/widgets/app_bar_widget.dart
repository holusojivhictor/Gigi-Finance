import 'package:gigi_finance/constants.dart';
import 'package:gigi_finance/responsive_layout.dart';
import 'package:flutter/material.dart';

List<String> _buttonNames = ["Overview", "Revenue", "Expense", "Control"];
int _currentSelectedButton = 0;

class AppBarWidget extends StatefulWidget {
  @override
  _AppBarWidgetState createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Constants.greyLight,
      child: Row(
        children: [
          if (ResponsiveLayout.isComputer(context))
            Container(
              margin: EdgeInsets.all(Constants.kPadding),
              height: double.infinity,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.black45,
                  offset:Offset(0, 0),
                  spreadRadius: 0,
                  blurRadius: 5,
                )
              ], shape: BoxShape.circle),
              child: CircleAvatar(
                backgroundColor: Constants.greyLight,
                radius: 30,
                child: Image.asset("assets/images/128_7.png"),
              ),
            )
          else
            IconButton(
              color: Colors.white,
              iconSize: 30,
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(Icons.menu, color: Constants.black),
            ),
          SizedBox(width: Constants.kPadding),
          if (ResponsiveLayout.isComputer(context))
            OutlinedButton(
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.all(Constants.kPadding / 2),
                child: Text("Admin Panel", style: TextStyle(color: Constants.black)),
              ),
              style: OutlinedButton.styleFrom(
                primary: Colors.white,
                side: BorderSide(color: Constants.black, width: 0.4),
              ),
            ),
          Spacer(),
          if (ResponsiveLayout.isComputer(context))
            ...List.generate(
              _buttonNames.length,
                (index) => TextButton(
                  onPressed: () {
                    setState(() {
                      _currentSelectedButton = index;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(Constants.kPadding * 2),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          _buttonNames[index],
                          style: TextStyle(
                            color: _currentSelectedButton == index
                                ? Colors.black
                                : Colors.black38,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(Constants.kPadding / 2),
                          width: 60,
                          height: 2,
                          decoration: BoxDecoration(
                            gradient: _currentSelectedButton == index
                                ? LinearGradient(colors: [Constants.black, Constants.black],
                            )
                                : null,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
            )
          else
            Padding(
              padding: const EdgeInsets.all(Constants.kPadding * 2),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    _buttonNames[_currentSelectedButton],
                    style: TextStyle(color: Colors.black),
                  ),
                  Container(
                    margin: EdgeInsets.all(Constants.kPadding / 2),
                    width: 60,
                    height: 2,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Constants.black, Constants.black],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          Spacer(),
          IconButton(
            color: Constants.black,
            iconSize: 25,
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          Stack(
            children: [
              IconButton(
                color: Constants.black,
                iconSize: 25,
                onPressed: () {},
                icon: Icon(Icons.notifications_none_outlined),
              ),
              Positioned(
                right: 6,
                top: 6,
                child: CircleAvatar(
                  backgroundColor: Constants.greyDark,
                  radius: 8,
                  child: Text(
                    "3",
                    style: TextStyle(fontSize: 10, color: Constants.black),
                  ),
                ),
              ),
            ],
          ),
          if (ResponsiveLayout.isPhone(context))
            Container(
              margin: EdgeInsets.all(Constants.kPadding),
              height: double.infinity,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.black45,
                  offset: Offset(0, 0),
                  spreadRadius: 0,
                  blurRadius: 5,
                )
              ], shape: BoxShape.circle),
              child: CircleAvatar(
                backgroundColor: Constants.greyLight,
                radius: 25,
                child: Image.asset("assets/images/128_7.png"),
              ),
            ),
        ],
      ),
    );
  }
}
