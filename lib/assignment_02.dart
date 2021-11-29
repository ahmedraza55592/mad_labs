import 'package:flutter/material.dart';

enum Conversion { fahrenheitToCelsius, celsisuToFahrenheit }

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Conversion? _conversion = Conversion.fahrenheitToCelsius;

  String _conversionValue = '';

  double _convertedValue = 0.0;

  double _fahrenheitToCelsius() {
    return (double.parse(_conversionValue) - 32.0) * 5.0 / 9.0;
  }

  double _celsiusToFahrenheit() {
    return (double.parse(_conversionValue) * 9.0 / 5.0) + 32.0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment 2"),
        backgroundColor: Colors.deepPurple,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              title: const Text(
                "Fahrenheit To Celsius",
                style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold),
              ),
              leading: Radio(
                  value: Conversion.fahrenheitToCelsius,
                  groupValue: _conversion,
                  onChanged: (Conversion? value) {
                    setState(() {
                      _conversion = value;
                    });
                  }),
            ),
            ListTile(
              title: const Text(
                "Celsius To Fahrenheit",
                style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold),
              ),
              leading: Radio(
                  value: Conversion.celsisuToFahrenheit,
                  groupValue: _conversion,
                  onChanged: (Conversion? value) {
                    setState(() {
                      _conversion = value;
                    });
                  }),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Enter temperature to Convert",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(color: Colors.black, width: 2.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(color: Colors.black, width: 2.0),
                  ),
                ),
                onChanged: (value) {
                  _conversionValue = value;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  enabled: false,
                  hintText: _convertedValue.toString(),
                  hintStyle: const TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(color: Colors.black, width: 2.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(color: Colors.black, width: 2.0),
                  ),
                ),
                onChanged: (value) {
                  _conversionValue = value;
                },
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            InkWell(
              onTap: () {
                _convertedValue = _conversion == Conversion.fahrenheitToCelsius
                    ? _fahrenheitToCelsius()
                    : _celsiusToFahrenheit();
                setState(() {});
              },
              child: Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height * .07,
                width: MediaQuery.of(context).size.width * .8,
                decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: Colors.black, width: 3.0)),
                child: const Text(
                  "Convert",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              "Fahrenheit To Celsius -> ${_fahrenheitToCelsius()} ",
              style: const TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Celsius To Fahrenheit -> ${_celsiusToFahrenheit()} ",
              style: const TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
