import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/myscaffold.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<StatefulWidget> createState() {
    return _HomeScreen();
  }
}

class _HomeScreen extends State<HomeScreen> {
  bool isAuthenticated = true;
  @override
  Widget build(BuildContext context) {

    return MyScaffold(
      name: 'Application mobile',
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
          ),ElevatedButton(
            onPressed: api,
            child: Text('Api register'),
          ),ElevatedButton(
            onPressed: login,
            child: Text('Login'),
          ),
        ]),
      ),
    );
  }

  void api(){
    Navigator.pushNamed(
        context,
        '/register',
    );
  }
  void login(){
    Navigator.pushNamed(
        context,
        '/login',
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
