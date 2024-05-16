import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/myscaffold.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../utils/secure_storage.dart';

class ProfilScreen extends StatelessWidget {
  const ProfilScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final SecureStorage secureStorage = SecureStorage();
    //final credentials = await secureStorage.readCredentials();

    String nom = '';
    String email = '';

    return MyScaffold(
      name: 'profil',
      body:Column(children: [Text('Email: $email'), Text('Nom : $nom')]);
    }
  Future<String?> _getEmailFromStorage() async {
    final storage = FlutterSecureStorage();
    return await storage.read(key: 'email');
  }

    /*Future<void> _loadCredentials() async {
        final credentials = await secureStorage.readCredentials();
        setState(() {
          _emailController.text = credentials['email'] ?? '';
          _passwordController.text = credentials['password'] ?? '';
        });
    }
     */
}

