import 'package:flutter/material.dart';
void main() => runApp(MyAppbtinkwell());
class MyAppbtinkwell extends StatelessWidget {
  const MyAppbtinkwell({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
        appBar: AppBar(
        title: Text('Interactive Card Example'),
        ),
          body: Center(
            child: ColorfulCard(),
          ),
        ),
    );
  }
}
class ColorfulCard extends StatefulWidget {
  @override
  _ColorfulCardState createState() => _ColorfulCardState();
}
class _ColorfulCardState extends State<ColorfulCard> {
  Color cardColor = Colors.blue;
  void changeColor() {
    setState(() {
      cardColor = cardColor == Colors.blue ? Colors.red : Colors.blue;
    });
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: changeColor,
      child: Card(
        color: cardColor,
        child: SizedBox(
          width: 200,
          height: 200,
          child: Center(
            child: Text(
              'Cliquez Moi!',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}