import 'package:flutter/material.dart';

void main() => runApp(
      const MyApp(),
    );

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //To get user input from the textfield
  final _UserInput = TextEditingController();
  var userpost = '';
  var number = 0;
  void onpress() {
    setState(() {
      number = int.parse(_UserInput.text);
    });
    setState(() {
      userpost = Fruits[number];
    });
  }

  // ignore: non_constant_identifier_names
  var Fruits = [
    'Apple',
    'Orange',
    'Rambutan',
    'Banana',
    'Blueberry',
    'Cherry',
    'Lime',
    'Grapes'
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 231, 159, 183),
        appBar: AppBar(
          title: const Center(
            child: Text('Assignment'),
          ),
          backgroundColor: const Color.fromARGB(255, 228, 116, 153),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [
              const SizedBox(
                height: 16,
              ),
              TextField(
                controller: _UserInput,
                decoration: const InputDecoration(
                    hintText: "Enter number 0-7",
                    labelText: "Type here",
                    labelStyle: TextStyle(fontSize: 18, color: Colors.black),
                    fillColor: Colors.white24,
                    filled: true,
                    border: OutlineInputBorder()),
                keyboardType: const TextInputType.numberWithOptions(),
                //To hide the text (Password)
                obscureText: false,
                maxLength: 1,
              ),
              const SizedBox(
                height: 35,
              ),
              RaisedButton(
                child: const Text('Send'),
                onPressed: (onpress),
              ),
              const SizedBox(
                height: 50,
              ),
              Text(
                userpost,
                style: const TextStyle(
                    fontSize: 25.0, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
