import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Calculator App'),
        ),
        body: const Body(),
      ),
    );
  }
}

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  //int count = 0;
  TextEditingController text1 = TextEditingController();
  TextEditingController text2 = TextEditingController();

  int Result = 0;

  void onPressAdd() {
    int num1 = int.parse(text1.text);
    int num2 = int.parse(text2.text);
    Result = num1 + num2;
    setState(() {});
  }

  void onPressMinus() {
    int num1 = int.parse(text1.text);
    int num2 = int.parse(text2.text);
    Result = num1 - num2;
    setState(() {});
  }

  void onPressMulti() {
    int num1 = int.parse(text1.text);
    int num2 = int.parse(text2.text);
    Result = num1 * num2;
    setState(() {});
  }

  void onPressDivided() {
    int num1 = int.parse(text1.text);
    int num2 = int.parse(text2.text);
    Result = num1 ~/ num2;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          margin: EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //mainAxisSize: MainAxisSize.min,

            children: [
              SizedBox(
                width: 150,
                height: 50,
                child: TextField(
                  // ignore: prefer_const_constructors
                  decoration: InputDecoration(
                    hintText: "Type Any Number",
                    hintStyle: TextStyle(color: Colors.blueAccent),
                    labelText: "First Number",
                    labelStyle: TextStyle(color: Colors.blueAccent),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                  controller: text1,
                  onSubmitted: (value) => text1.text = value,
                ),
              ),
              SizedBox(
                width: 150,
                height: 50,
                child: TextField(
                  // ignore: prefer_const_constructors
                  decoration: InputDecoration(
                    hintText: "Type Any Number",
                    hintStyle: TextStyle(color: Colors.blueAccent),
                    labelText: "Second Number",
                    labelStyle: TextStyle(color: Colors.blueAccent),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                  controller: text2,
                  onSubmitted: (value) => text2.text = value,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 30.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 33,
              child: ElevatedButton(
                onPressed: onPressAdd,
                child: const Text('+'),
              ),
            ),
            SizedBox(
              width: 33,
              child: ElevatedButton(
                onPressed: onPressMinus,
                child: const Text('-'),
              ),
            ),
            SizedBox(
              width: 33,
              child: ElevatedButton(
                onPressed: onPressMulti,
                child: const Text('*'),
              ),
            ),
            SizedBox(
              width: 33,
              child: ElevatedButton(
                onPressed: onPressDivided,
                child: const Text('/'),
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        Text(
          'The Result is: $Result',
          style: TextStyle(
              fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
