import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Exemple de formulaire Flutter',
        theme: ThemeData(
        appBarTheme: const AppBarTheme(
        backgroundColor: Colors.indigo,
        ),
    ),
    home: Scaffold(
    appBar: AppBar(title: const Text('Authentication', style: TextStyle(color: Colors.white)),
    ),
      body: MyCustomForm(),
    ),
      debugShowCheckedModeBanner: false,
    );
  }
}
class MyCustomForm extends StatefulWidget {
  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}
class _MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  String? _sexe;

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }
  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Formulaire soumis'),
          content: Text('Bonjour, ${_nameController.text}!'),
          actions: [
            TextButton(
              child: Text('OK'),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
        TextFormField(
        controller: _nameController,
          decoration: const InputDecoration(
            labelText: 'Nom',
            border: OutlineInputBorder(),
            errorStyle: TextStyle(color: Color.fromARGB(255, 196, 43, 160)),
            errorBorder: OutlineInputBorder(
              borderSide:
              BorderSide(color: Color.fromARGB(255, 196, 43, 160)),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide:
              BorderSide(color: Color.fromARGB(255, 196, 43, 160)),
            ),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Veuillez entrer votre nom';
            } else if (!RegExp(r'^[a-zA-Z\s]+$').hasMatch(value)) {
              return 'Veuillez n\'utiliser que des lettres';
            }
            return null;
          },
        ),
          SizedBox(height: 10),
          TextFormField(
            controller: _emailController,
            decoration: InputDecoration(
              labelText: 'Email',
              border: OutlineInputBorder(),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Veuillez entrer un email';
              } else if (!RegExp(
                  r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$')
                  .hasMatch(value)) {
                return 'Veuillez entrer un email valide';
              }
              return null;
            },
          ),
          SizedBox(height: 10),
          TextFormField(
            controller: _passwordController,
            decoration: InputDecoration(
              labelText: 'Mot de passe',
              border: OutlineInputBorder(),
            ),
            obscureText: true,
            validator: (value) {
              if (value == null || value.isEmpty) {
              return 'Veuillez entrer un mot de passe';
              }if (value.length < 12) {
                return 'Le mot de passe doit contenir au moins 12 caractères';
              }
              if (!RegExp(r'(?=.*[a-z])').hasMatch(value)) {
                return 'Le mot de passe doit contenir au moins une minuscule';
              }
              if (!RegExp(r'(?=.*[A-Z])').hasMatch(value)) {
                return 'Le mot de passe doit contenir au moins une majuscule';
              }
              if (!RegExp(r'(?=.*\d)').hasMatch(value)) {
                return 'Le mot de passe doit contenir au moins un chiffre';
              }
              if (!RegExp(r'(?=.*[\W])').hasMatch(value)) {
          // \W signifie tout caractère qui n'est pas une lettre ou un chiffre
                return 'Le mot de passe doit contenir au moins un caractère spécial';
              }
              return null; // Si toutes les conditions sont remplies
            },
          ),
            SizedBox(height: 20),
            TextFormField(
              controller: _confirmPasswordController,
              decoration:
              InputDecoration(labelText: 'Confirmez le mot de passe'),
              obscureText: true,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Veuillez confirmer votre mot de passe';
                } else if (value != _passwordController.text) {
                  return 'Les mots de passe ne correspondent pas';
                }
                return null;
              },
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
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: _submitForm,
            child: const Text('Soumettre'),
          ),
          ],
        ),
    ),
    );
  }
}
