import 'package:flutter/material.dart';

class FormulaireScreen extends StatelessWidget {
  const FormulaireScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulaire flutter'),
      ),
      body: Formulaire(),
    );
  }
}

class Formulaire extends StatefulWidget {
  @override
  _FormulaireState createState() => _FormulaireState();
}

class _FormulaireState extends State<Formulaire> {
  bool _accepteConditions = false;
  bool _notificationActive = false;
  String _nom = '';
  String _prenom = '';
  String _email = '';
  String _password = '';
  String? _sexe;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            onChanged: (value) {
              setState(() {
                _nom = value;
              });
            },
            decoration: InputDecoration(
              labelText: 'Nom',
              hintText: 'Entrez votre Nom',
            ),
          ),
          SizedBox(height: 16.0),
          TextFormField(
            onChanged: (value) {
              setState(() {
                _prenom = value;
              });
            },
            decoration: InputDecoration(
              labelText: 'Prénom',
              hintText: 'Entrez votre Prénom',
            ),
          ),
          SizedBox(height: 16.0),
          TextFormField(
            onChanged: (value) {
              setState(() {
                _email = value;
              });
            },
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: 'Email',
              hintText: 'Entrez votre adresse e-mail',
            ),
            validator: (value){
              if(value == null || value.isEmpty){
                return 'Veuillez entrer un email valide';
              }else if(!RegExp(
                  r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$')
              .hasMatch(value)){
                return 'Veuillez entrer un email valide';
              }
              return null;
              },
          ),
          SizedBox(height: 16.0),
          TextFormField(
            onChanged: (value) {
              setState(() {
                _password = value;
              });
            },
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Mot de passe',
              hintText: 'Entrez votre mot de passe',
            ),
          ),
          SizedBox(height: 16.0),
          Row(
            children: <Widget>[
              Text('Notifications:'),
              SizedBox(width: 16.0),
              Switch( 
                value: _notificationActive,
                onChanged: (value) {
                  setState(() {
                    _notificationActive = value;
                  });
                },
              ),
            ],
          ),
          SizedBox(height: 16.0),
          Row(
            children: <Widget>[
              Text('Sexe:'),
              SizedBox(width: 16.0),
              Radio(
                value: 'Homme',
                groupValue: _sexe,
                onChanged: (value) {
                  setState(() {
                    _sexe = value.toString();
                  });
                },
              ),
              Text('Homme'),
              SizedBox(width: 16.0),
              Radio(
                value: 'Femme',
                groupValue: _sexe,
                onChanged: (value) {
                  setState(() {
                    _sexe = value.toString();
                  });
                },
              ),
              Text('Femme'),
            ],
          ),
          SizedBox(height: 16.0),
          Row(
            children: <Widget>[
              Checkbox(
                value: _accepteConditions,
                onChanged: (bool? value) {
                  setState(() {
                    _accepteConditions = value!;
                  });
                },
              ),
              Text(
                'J\'accepte les conditions d\'utilisation',
              ),
            ],
          ),
          SizedBox(height: 16.0),
          Padding(
            padding: EdgeInsets.only(left: 130.0),
            child: ElevatedButton(
              onPressed: () {
                print(
                    'Nom: $_nom, Prénom: $_prenom, Email: $_email, Mot de passe: $_password, Accepte conditions: $_accepteConditions');
              },
              child: Text('Envoyer'),
            ),
          ),
        ],
      ),
    );
  }
}
