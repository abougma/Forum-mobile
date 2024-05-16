import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<StatefulWidget> createState() {
    return _HomeScreen();
  }
}

class _HomeScreen extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Apllication mobile', style: TextStyle(color: Colors.white)),
        leading: const Icon(Icons.access_alarm, color: Color(0xFFFF00FF)),
        elevation: 10.0,
        centerTitle: true,
      ),

      body: Center(
        child: Column(children: [
          ElevatedButton(
            onPressed: btAbout,
            child: Text('À propos'),
          ),
          ElevatedButton(
            onPressed: btSetting,
            child: Text('Setting'),
          ),
          ElevatedButton(
            onPressed: btMessage,
            child: Text('Message'),
          ),
          ElevatedButton(
            onPressed: btFormulaire,
            child: Text('Formulaire'),
          ),
          ElevatedButton(
            onPressed: btFormulaire1,
            child: Text('Formulaire1'),
          ),
          ElevatedButton(
            onPressed: btinkwell,
            child: Text('inkwell'),
          ),
          ElevatedButton(
            onPressed: btuser,
            child: Text('User'),
          ),
          ElevatedButton(
            onPressed: btmessage1,
            child: Text('Message'),
          ),
        ]),
      ),
    );
  }

  void btAbout() {
    Navigator.pushNamed(
      context,
      '/about',
    );
  }

  void btSetting() {
    Navigator.pushNamed(context, '/setting');
  }

  void btMessage() {
    Navigator.pushNamed(
      context,
      '/message',
      arguments: 'Message passé en paramètre',
    );
  }

  void btFormulaire() {
    Navigator.pushNamed(
      context,
      '/formulaire',
    );
  }
  void btFormulaire1(){
    Navigator.pushNamed(
      context,
      '/formulaire1',
    );
  }
  void btinkwell(){
    Navigator.pushNamed(
      context,
      '/inkwell',
    );
  }
  void btuser(){
    Navigator.pushNamed(
      context,
      '/user',
    );
  }
  void btmessage1(){
    Navigator.pushNamed(
      context,
      '/message1',
    );
  }
}
