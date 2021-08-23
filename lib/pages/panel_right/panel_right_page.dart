import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gigi_finance/constants.dart';
import 'package:flutter/material.dart';

class UnpaidBills {
  String name;
  Color color;
  IconData icon;
  String bill;
  UnpaidBills({required this.name, required this.color, required this.icon, required this.bill});
}

class PaidBills {
  String name;
  Color color;
  IconData icon;
  String bill;
  PaidBills({required this.name, required this.color, required this.icon, required this.bill});
}

class Product {
  String name;
  bool enable;
  Product({required this.name, this.enable = true});
}

class PanelRightPage extends StatefulWidget {
  @override
  _PanelRightPageState createState() => _PanelRightPageState();
}

class _PanelRightPageState extends State<PanelRightPage> {

  List<UnpaidBills> _unpaidBills = [
    UnpaidBills(name: "House Rent", color: Colors.white, icon: Icons.house_siding, bill: r"$1500"),
    UnpaidBills(name: "Car Insurance", color: Colors.white, icon: Icons.directions_car_rounded, bill: r"$140"),
  ];

  List<PaidBills> _bills = [
    PaidBills(name: "Water Bill", color: Colors.white, icon: Icons.water, bill: r"$150"),
    PaidBills(name: "Income Salary", color: Colors.white, icon: Icons.attach_money, bill: r"$1200"),
    PaidBills(name: "Electric Bill", color: Colors.white, icon: Icons.lightbulb_outline, bill: r"$2000"),
    PaidBills(name: "Internet Bill", color: Colors.white, icon: Icons.wifi, bill: r"$3550"),
    PaidBills(name: "Council Tax", color: Colors.white, icon: Icons.house_outlined, bill: r"$4500"),
    PaidBills(name: "Heating Bill", color: Colors.white, icon: Icons.local_fire_department_outlined, bill: r"$350"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: Constants.kPadding / 2,
                right: Constants.kPadding / 2,
                left: Constants.kPadding / 2,
              ),
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius:BorderRadius.circular(25),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [Colors.black, Colors.black87],
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(Constants.kPadding),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            //makeTransactionsIcon(),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: Constants.kPadding,
                              ),
                              child: FaIcon(FontAwesomeIcons.globe, color: Colors.white, size: 22),
                            ),
                            Container(
                              width: 60,
                              height: 50,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/mastercard3.png"),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: Constants.kPadding,
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                child: Text("5399", style: TextStyle(color: Colors.white, fontSize: 28)),
                              ),
                              SizedBox(
                                width: 10,
                                height: 30,
                              ),
                              SizedBox(
                                child: Text("5412", style: TextStyle(color: Colors.white, fontSize: 28)),
                              ),
                              SizedBox(
                                width: 10,
                                height: 30,
                              ),
                              SizedBox(
                                child: Text("XXXX", style: TextStyle(color: Colors.white, fontSize: 28)),
                              ),
                              SizedBox(
                                width: 10,
                                height: 30,
                              ),
                              SizedBox(
                                child: Text("9742", style: TextStyle(color: Colors.white, fontSize: 28)),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            //makeTransactionsIcon(),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: Constants.kPadding,
                              ),
                              child: Text("CARD HOLDER", style: TextStyle(color: Colors.grey.shade500, fontSize: 14)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                right: Constants.kPadding / 2,
                              ),
                              child: Text("VALID THRU", style: TextStyle(color: Colors.grey.shade500, fontSize: 14)),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            //makeTransactionsIcon(),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: Constants.kPadding,
                              ),
                              child: Text("JONATHAN DOE", style: TextStyle(color: Colors.white, fontSize: 20)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                right: Constants.kPadding / 2,
                              ),
                              child: Text("07/2026", style: TextStyle(color: Colors.white, fontSize: 18)),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
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
                          'Recent Activities',
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
                          '25 July 2021',
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
                        _bills.length,
                            (index) => ListTile(
                          leading: Padding(
                            padding: const EdgeInsets.only(
                              top: Constants.kPadding / 2,
                            ),
                            child: CircleAvatar(
                              radius: 18,
                              child: Icon(
                                _bills[index].icon,
                                color: Colors.black,
                              ),
                              backgroundColor: _bills[index].color,
                            ),
                          ),
                          title: Text(
                            _bills[index].name,
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                          subtitle: Text("Successful"),
                          trailing: Text(
                            _bills[index].bill,
                            style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
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
                          'Recent Activities',
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
                          '25 July 2021',
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
                        _unpaidBills.length,
                            (index) => ListTile(
                          leading: Padding(
                            padding: const EdgeInsets.only(
                              top: Constants.kPadding / 2,
                            ),
                            child: CircleAvatar(
                              radius: 18,
                              child: Icon(
                                _unpaidBills[index].icon,
                                color: Colors.black,
                              ),
                              backgroundColor: _bills[index].color,
                            ),
                          ),
                          title: Text(
                            _unpaidBills[index].name,
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                          subtitle: Text("Pending"),
                          trailing: Text(
                            _unpaidBills[index].bill,
                            style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),
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
      ),
    );
  }
}