import '../model/user.dart';

class Message {
  String sujet;
  String contenu;
  DateTime dateEnvoi;
  User auteur;

  Message({
    required this.sujet,
    required this.contenu,
    required this.dateEnvoi,
    required this.auteur,
  });
}
