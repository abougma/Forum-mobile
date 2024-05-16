import '../model/message.dart';
import '../model/user.dart';

class MessageController {
  //final UserController _userController = UserController();
  List<Message> loadMessages() {
    //List<User> users = _userController.users;

    List<Message> messages = [
      Message(
        sujet: 'Dev mobile',
        contenu: 'Flutter',
        dateEnvoi: DateTime.now(),
        auteur: User('Nom de l\'auteur 2', 'Prénom de l\'auteur 2'),
      ),
      Message(
        sujet: 'Dev web',
        contenu: 'JavaScript',
        dateEnvoi: DateTime.now(),
        auteur: User('Nom de l\'auteur 2', 'Prénom de l\'auteur 2'),
      ),
      Message(
        sujet: 'Dev web',
        contenu: 'JavaScript',
        dateEnvoi: DateTime.now(),
        auteur: User('Nom de l\'auteur 2', 'Prénom de l\'auteur 2'),
      ),
      Message(
        sujet: 'Dev web',
        contenu: 'JavaScript',
        dateEnvoi: DateTime.now(),
        auteur: User('Nom de l\'auteur 2', 'Prénom de l\'auteur 2'),
      ),
      Message(
        sujet: 'Dev web',
        contenu: 'JavaScript',
        dateEnvoi: DateTime.now(),
        auteur: User('Nom de l\'auteur 2', 'Prénom de l\'auteur 2'),
      ),
    ];

    return messages;
  }
}
