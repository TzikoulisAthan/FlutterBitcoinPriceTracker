import 'package:flutter/material.dart';
import 'package:bitcoin_tracker/utilities/coin_data.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String? dropDownValue = 'EUR';

  List<DropdownMenuItem<String>> getDropDownItems() {
    List<DropdownMenuItem<String>> dropDownItems = [];
    for (String currency in currenciesList) {
      var dropDownItem =
          DropdownMenuItem(child: Text(currency), value: currency);
      dropDownItems.add(dropDownItem);
    }

    return dropDownItems;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue.shade600,
        centerTitle: true,
        title: Text(
          'Bitcoin Tracker',
          style: TextStyle(
              fontWeight: FontWeight.w500, fontSize: 22, color: Colors.white),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
            child: Card(
              elevation: 5,
              color: Colors.lightBlueAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 22),
                child: Text(
                  '1 BTC = ? USD',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 150,
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 30),
            color: Colors.lightBlue.shade600,
            child: DropdownButton<String>(
              value: dropDownValue,
              items: getDropDownItems(),
              onChanged: (String? value) {
                getDropDownItems();
                setState(() {
                  dropDownValue = value;
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
