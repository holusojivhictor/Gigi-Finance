import 'package:flutter/material.dart';
import 'package:gigi_finance/constants.dart';
import 'package:gigi_finance/responsive_layout.dart';

class ButtonsInfo {
  String title;
  IconData icon;

  ButtonsInfo({required this.title, required this.icon});
}

class Task {
  String task;
  double taskValue;
  Color color;

  Task({required this.task, required this.taskValue, required this.color});
}

int _currentIndex = 0;

List<ButtonsInfo> _buttonNames = [
  ButtonsInfo(title: "Home", icon: Icons.home_outlined),
  ButtonsInfo(title: "Settings", icon: Icons.settings),
  ButtonsInfo(title: "Notifications", icon: Icons.notifications_outlined),
  ButtonsInfo(title: "Contacts", icon: Icons.contact_mail_outlined),
  ButtonsInfo(title: "Expenses", icon: Icons.sell_outlined),
  ButtonsInfo(title: "Income", icon: Icons.mark_email_read_outlined),
  ButtonsInfo(title: "Security", icon: Icons.verified_user_outlined),
  ButtonsInfo(title: "User", icon: Icons.supervised_user_circle_outlined),
];

class DrawerPage extends StatefulWidget {
  @override
  _DrawerPageState createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Constants.kPadding * 2),
          child: Column(
            children: [
              ListTile(
                title: Text('Admin Menu', style: TextStyle(color: Colors.black)),
                trailing: !ResponsiveLayout.isComputer(context)
                    ? IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                          },
                        icon: Icon(Icons.close, color: Colors.black),
                      )
                    : null,
              ),
              ...List.generate(
                _buttonNames.length,
                  (index) => Column(
                    children: [
                      Container(
                        decoration: index == _currentIndex ? BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white54,
                        )
                            : null,
                        child: ListTile(
                          title: Text(
                            _buttonNames[index].title,
                            style: TextStyle(color: Colors.black),
                          ),
                          leading: Padding(
                            padding: const EdgeInsets.all(Constants.kPadding),
                            child: Icon(
                              _buttonNames[index].icon,
                              color: Colors.black,
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              _currentIndex = index;
                            });
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.black,
                        thickness: 0.1,
                      ),
                    ],
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}