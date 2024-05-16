import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/userDetail_screen.dart';

import '../controller/user_controller.dart';
import '../model/user.dart';

class HomeScreen1 extends StatefulWidget {
  const HomeScreen1({super.key});
  @override
  State<StatefulWidget> createState() {
    return _HomeScreen1();
  }
}
class _HomeScreen1 extends State<HomeScreen1> {
  UserController _userController = UserController();
  @override
  void initState() {
    super.initState();
    _userController.loadUsers();
  }

  void _onUserTapped(User user){
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => UserDetailScreen(user: user),
      ),
    );
  }

  Widget _buildUserList() {
    return ListView.builder(
      itemCount: _userController.users.length,
      itemBuilder: (BuildContext context, int index) {
        User user = _userController.users[index];
        return Card(
          child: ListTile(
            leading: Icon(Icons.person),
          title: Text('${user.prenom} ${user.nom}'),
            onTap: (){
              _onUserTapped(user);
            },
          ),
        );
      },
    );
  }

  void _submitDialog() {
    TextEditingController _nomPrenomController = TextEditingController();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Ajouter un utilisateur'),
          content: TextField(
            controller: _nomPrenomController,
            decoration: InputDecoration(labelText: 'Nom et Prénom'),
          ),
          actions: <Widget>[
            ElevatedButton(
              onPressed: () {
                String? nomPrenom = _nomPrenomController.text;
                if (nomPrenom != null && nomPrenom.isNotEmpty) {
                  List<String> parts = nomPrenom.split(' ');
                  if (parts.length == 2) {
                    String nom = parts[0];
                    String prenom = parts[1];
                    User user = User(nom, prenom);
                    _userController.users.add(user);
                    setState(() {});
                    Navigator.of(context).pop();
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('Veuillez entrer un nom et un prénom.'),
                    ));
                  }
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('Veuillez entrer un nom et un prénom.'),
                  ));
                }
              },
              child: Text('Ajouter'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Annuler'),
            ),
          ],
        );
      },
    );
  }

  void _addUser() {
    User user = User('nom', 'prenom');
    _userController.users.add(user);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter', style: TextStyle(color: Colors.white)),
        elevation: 10.0,
        centerTitle: true,
      ),
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      body: _buildUserList(),
      floatingActionButton: FloatingActionButton(
        onPressed: _submitDialog,
        child: const Icon(Icons.add),
      ),
    );
  }
}
