import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DatePicker',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyScaff(),
    );
  }
}

class MyScaff extends StatefulWidget {
  _MyScaffState createState() => _MyScaffState();
}

class _MyScaffState extends State<MyScaff> {
  var dropDownList = ['item1', 'item2', 'item3', 'item4'];
  var selectedVal = 'item1';
  bool isSwitchChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Choose Item: ',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              const SizedBox(width: 30),
              DropdownButton<String>(
                value: selectedVal,
                items: dropDownList.map((String value) {
                  return DropdownMenuItem(
                    child: Text(value),
                    value: value,
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    selectedVal = value.toString();
                  });
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Switch Button: ',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              const SizedBox(width: 30),
              Switch(
                value: isSwitchChecked,
                onChanged: (value) {
                  setState(() {
                    isSwitchChecked = value;
                  });
                },
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
