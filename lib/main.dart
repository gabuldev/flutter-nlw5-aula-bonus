import 'package:flutter/material.dart';

void main() {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var tapped = true;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        child: Container(
          height: 100,
          color: Colors.black,
          child: Center(
              child: Text(
            "AppBar",
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          )),
        ),
        preferredSize: Size.fromHeight(100),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            tapped = !tapped;

            setState(() {});
          },
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                color: tapped ? Colors.green : Colors.amber,
                borderRadius: BorderRadius.circular(25),
                border: Border.fromBorderSide(
                    BorderSide(color: Colors.red, width: 10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    spreadRadius: 1,
                    blurRadius: 10,
                  )
                ]),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 100,
        color: Colors.green,
        child: Center(
            child: Text(
          "Bottom",
          style: TextStyle(color: Colors.white, fontSize: 30),
        )),
      ),
    );
  }
}
