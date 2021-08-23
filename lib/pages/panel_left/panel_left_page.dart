import 'package:flutter/material.dart';
import 'package:gigi_finance/responsive_layout.dart';
import 'package:gigi_finance/constants.dart';
import 'package:gigi_finance/pages/charts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class History {
  String name;
  Color color;
  IconData icon;
  String bill;
  History({required this.name, required this.color, required this.icon, required this.bill});
}

class Todo {
  String name;
  bool enable;
  Todo({required this.name, this.enable = true});
}

class PanelLeftPage extends StatefulWidget {
  @override
  _PanelLeftPageState createState() => _PanelLeftPageState();
}

class _PanelLeftPageState extends State<PanelLeftPage> {

  List<History> _history = [
    History(name: "Life Insurance", color: Colors.white, icon: Icons.personal_injury, bill: r"$2500.00"),
    History(name: "Loan", color: Colors.white, icon: Icons.attach_money, bill: r"$280.00"),
    History(name: "Online Payment", color: Colors.white, icon: Icons.directions_car_rounded, bill: r"$1200.00"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          if (ResponsiveLayout.isComputer(context))
            Container(
              color: Constants.greyLight,
              width: 50,
              child: Container(
                decoration: BoxDecoration(
                  color: Constants.greyDark,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                  )
                ),
              ),
            ),
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    right: Constants.kPadding / 2,
                    left: Constants.kPadding / 2,
                    bottom: Constants.kPadding / 2,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(Constants.kPadding / 2),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Saved This Month',
                              style: TextStyle(color: Colors.black54, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            r"$24,999.00",
                            style: TextStyle(color: Colors.black, fontSize: 28, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                LineChartSample2(),
                Padding(
                  padding: const EdgeInsets.only(
                    top: Constants.kPadding * 2,
                    left: Constants.kPadding,
                    right: Constants.kPadding,
                    bottom: Constants.kPadding,
                  ),
                  child: Container(
                    height: 200,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 10,
                            left: 70,
                            bottom: 40,
                            right: 70,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                        ),
                        Positioned(
                          top: 20,
                          left: 50,
                          bottom: 30,
                          right: 50,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 30,
                          left: 30,
                          bottom: 20,
                          right: 30,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 40,
                          left: 10,
                          bottom: 10,
                          right: 10,
                          child: Card(
                            elevation: 8,
                            color: Colors.black54.withOpacity(1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Container(
                              width: double.infinity,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                                child: ListTile(
                                  //leading: Icon(Icons.sell),
                                  title: Padding(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: Text(
                                      "Plan for June",
                                      style: TextStyle(color: Colors.grey, fontSize: 18),
                                    ),
                                  ),
                                  subtitle: Text(
                                    "Completed",
                                    style: TextStyle(color: Colors.white, fontSize: 22),
                                  ),
                                  trailing: FaIcon(FontAwesomeIcons.chartPie, color: Colors.white70, size: 35),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: Constants.kPadding * 2,
                    right: Constants.kPadding / 2,
                    left: Constants.kPadding / 2,
                    bottom: Constants.kPadding,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: Constants.kPadding,
                        ),
                        child: Row(
                          children: [
                            const Text(
                              'History',
                              style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: Constants.kPadding,
                          top: Constants.kPadding / 2,
                        ),
                        child: Row(
                          children: [
                            const Text(
                              'Transactions made in June',
                              style: TextStyle(color: Colors.black54, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Card(
                        color: Constants.greyLight,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: List.generate(
                            _history.length,
                                (index) => ListTile(
                              leading: Padding(
                                padding: const EdgeInsets.only(
                                  top: Constants.kPadding / 2,
                                ),
                                child: CircleAvatar(
                                  radius: 18,
                                  child: Icon(
                                    _history[index].icon,
                                    color: Colors.black,
                                  ),
                                  backgroundColor: _history[index].color,
                                ),
                              ),
                              title: Text(
                                _history[index].name,
                                style: TextStyle(color: Colors.black, fontSize: 16),
                              ),
                              subtitle: Text("Completed"),
                              trailing: Text(
                                _history[index].bill,
                                style: TextStyle(color: Colors.black, fontSize: 17),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}