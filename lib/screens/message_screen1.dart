import 'package:flutter/material.dart';
import '../model/message.dart';
import '../controller/message_controller.dart';

class MessageScreen1 extends StatelessWidget {
  const MessageScreen1({super.key});
  @override
  Widget build(BuildContext context) {

    MessageController _messageController = MessageController();

    List<Message> messages = _messageController.loadMessages();

    return Scaffold(
      appBar: AppBar(
        title: Text('Messages'),
      ),
      body: ListView.builder(
        itemCount: messages.length,
        itemBuilder: (BuildContext context, int index) {
          Message message = messages[index];
          return ListTile(
            title: Text(message.sujet),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(message.contenu),
                Text('Date d\'envoi: ${message.dateEnvoi.toString()}'),
                Text('Auteur : ${message.auteur.prenom} ${message.auteur.nom}'),
              ],
            ),
            onTap: () {
              // Ajoutez ici le code pour afficher les détails du message
            },
          );
        },
      ),
    );
  }
}
