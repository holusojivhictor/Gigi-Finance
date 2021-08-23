import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gigi_finance/pages/charts.dart';
import 'package:gigi_finance/constants.dart';
import 'package:gigi_finance/responsive_layout.dart';

class Transfer {
  String type;
  String amount;
  double width;
  IconData icon;
  Transfer({required this.type, required this.width, required this.icon, required this.amount});
}

class Person {
  String name;
  Color color;
  Person({required this.name, required this.color});
}

class PanelCenterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    List<Transfer> _transfer = [
      Transfer(type: "Transfer via User Card number", width: 120, icon: FontAwesomeIcons.creditCard, amount: r"$1200"),
      Transfer(type: "Transfer from Foreign Banks", width: 120, icon: FontAwesomeIcons.exchangeAlt, amount: r"$150"),
      Transfer(type: "Transfer within the same Bank", width: 120, icon: FontAwesomeIcons.university, amount: r"$1500"),
      Transfer(type: "Transfer made to Other Banks", width: 120, icon: FontAwesomeIcons.handHoldingUsd, amount: r"$2200"),
    ];

    List<Person> _persons = [
      Person(name: "Farida Odin", color: Colors.white),
      Person(name: "Bruce Willis", color: Colors.white),
      Person(name: "Rick Sanchez", color: Colors.white),
      Person(name: "Amish Cyborg", color: Colors.white),
      Person(name: "Amelia Howard", color: Colors.white),
      Person(name: "Harley Higgins", color: Colors.white),
    ];
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 160,
            child: Stack(
              children: [
                Positioned(
                  left: 10,
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
                              "Plan for 2021",
                              style: TextStyle(color: Colors.grey, fontSize: 18),
                            ),
                          ),
                          subtitle: Text(
                            "Completed",
                            style: TextStyle(color: Colors.white, fontSize: 22),
                          ),
                          trailing: FaIcon(FontAwesomeIcons.angellist, color: Colors.grey, size: 25),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 20,
                  bottom: 15,
                  left: 30,
                  right: 30,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                Positioned(
                  top: 30,
                  bottom: 5,
                  left: 50,
                  right: 50,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ],
            ),
          ),
          if (ResponsiveLayout.isPhone(context))
            Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: Constants.kPadding / 2,
                        right: Constants.kPadding / 2,
                        left: Constants.kPadding / 2,
                      ),
                      child: Card(
                        color: Constants.white,
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius:BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 5),
                                child: Row(
                                  children: [
                                    FaIcon(FontAwesomeIcons.creditCard, color: Constants.black, size: 25),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10),
                                child: SizedBox(
                                    width: 150,
                                    child: Text("Transfer via User Card number", style: TextStyle(color: Colors.grey, fontSize: 16))),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 5),
                                child: Text(r"$1200", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: Constants.kPadding / 2,
                      ),
                      child: Card(
                        color: Constants.white,
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius:BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 5),
                                child: Row(
                                  children: [
                                    FaIcon(FontAwesomeIcons.exchangeAlt, color: Constants.black, size: 25),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10),
                                child: SizedBox(
                                    width: 150,
                                    child: Text("Transfer from Foreign Banks", style: TextStyle(color: Colors.grey, fontSize: 16))),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 5),
                                child: Text(r"$150", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: Constants.kPadding / 2,
                        right: Constants.kPadding / 2,
                        left: Constants.kPadding / 2,
                      ),
                      child: Card(
                        color: Constants.white,
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius:BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 5),
                                child: Row(
                                  children: [
                                    FaIcon(FontAwesomeIcons.university, color: Constants.black, size: 25),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10),
                                child: SizedBox(
                                    width: 150,
                                    child: Text("Transfer within the Same Bank", style: TextStyle(color: Colors.grey, fontSize: 16))),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 5),
                                child: Text(r"$1500", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: Constants.kPadding / 2,
                      ),
                      child: Card(
                        color: Constants.white,
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius:BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 5),
                                child: Row(
                                  children: [
                                    FaIcon(FontAwesomeIcons.handHoldingUsd, color: Constants.black, size: 25),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10),
                                child: SizedBox(
                                    width: 150,
                                    child: Text("Transfer made to Other Banks", style: TextStyle(color: Colors.grey, fontSize: 16))),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 5),
                                child: Text(r"$2200", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          else
          Column(
            children: List.generate(
              _transfer.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(
                    top: Constants.kPadding / 2,
                    right: Constants.kPadding / 2,
                    left: Constants.kPadding / 2,
                  ),
                  child: Card(
                    color: Constants.white,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius:BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Row(
                              children: [
                                FaIcon(_transfer[index].icon, color: Constants.black, size: 25),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: SizedBox(
                                child: Text(_transfer[index].type, style: TextStyle(color: Colors.grey, fontSize: 16))),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Text(_transfer[index].amount, style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
            ),
          ),
          BarChartSample2(),
          Padding(
            padding: const EdgeInsets.only(
              top: Constants.kPadding,
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
                        'Plan Members',
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
                        'Friends and family on your plan.',
                        style: TextStyle(color: Colors.black54, fontSize: 16),
                      ),
                    ],
                  ),
                ),
                Card(
                  color: Constants.greyLight,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: List.generate(
                      _persons.length,
                          (index) => ListTile(
                        leading: CircleAvatar(
                          radius: 15,
                          child: Text(
                            _persons[index].name.substring(0, 1),
                            style: TextStyle(color: Colors.black),
                          ),
                          backgroundColor: _persons[index].color,
                        ),
                        title: Text(
                          _persons[index].name,
                          style: TextStyle(color: Colors.black),
                        ),
                        trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.message),
                          color: Colors.grey,
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
    );
  }
}