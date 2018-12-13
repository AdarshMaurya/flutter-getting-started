import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trip Cost Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new FuelForm(),
    );
  }
}

class FuelForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FuelFormState();
}

class _FuelFormState extends State<FuelForm> {
  String name = '';
  final _currencies = ['Rupees', 'Euro', 'Pounds', 'Yens', 'Dollars'];
  String _currency = 'Rupees';
  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.title;

    return Scaffold(
        appBar: AppBar(
          title: Text("Trip Cost Calculator"),
          backgroundColor: Colors.blueAccent,
        ),
        body: Container(
          padding: EdgeInsets.all(15.0),
          child: Column(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  labelText: 'Distance',
                  hintText: "e.g 124",
                  labelStyle: textStyle,
                  border:OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0)
                  ),
                ),
                keyboardType: TextInputType.number,
                onChanged: (String string) {
                  setState(() {
                    name = string;
                  });
                },
              ),
              // DropdownButton<String>(
              //   items: _currencies.map((String value) {
              //     return DropdownMenuItem<String>(
              //         value: value, child: Text(value));
              //   }).toList(),
              //   value: _currency,
              //   onChanged: (String value) {
              //     _onDropdownChanged(value);
              //   },
              // ),
              Text('Hello ' + name + '!')
            ],
          ),
        ));
  }

  _onDropdownChanged(String value) {
    setState(() {
      this._currency = value;
    });
  }
}
