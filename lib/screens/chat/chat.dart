import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../../components/message_box/message_box.dart';
import '../../store/chats.dart';

final chatsStore = ChatsStore();

class ChatScreen extends StatelessWidget {
  ChatScreen({@required this.id});

  final String id;
  final messageContentInputController = TextEditingController();

  void submitMessageForm() {
    Map<String, Object> messageData = {
      'created_at': DateTime(2020, 9, 14, 8, 50, 10),
      'created_by': {
        'name': 'Você',
      },
      'content': this.messageContentInputController.text,
    };

    chatsStore.addMessage(this.id, messageData);

    this.messageContentInputController.clear();
  }

  @override
  Widget build(BuildContext context) {
    Map chat = chatsStore.chats
      .singleWhere((chat) => this.id == chat['id']);

    return new Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        elevation: 1,
        title: Text(chat['title']),
      ),
      body: Center(
        child: Padding(
          child: Observer(
            builder: (_) {
              Map chat = chatsStore.chats
                .singleWhere((chat) => this.id == chat['id']);
              
              List<Map> messages = chat['messages'];
              List<Widget> messagesBox = messages.map((message) => MessageBox(message: message))
                .toList();

              return ListView(children: messagesBox);
            }
          ),
          padding: EdgeInsets.all(8.0),
        )
      ),
      bottomNavigationBar: Card(
        child: TextField(
          onSubmitted: (String content) { this.submitMessageForm(); },
          controller: this.messageContentInputController,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(16.0),
            hintText: 'Escreva uma mensagem',
            suffixIcon: IconButton(
              color: Theme.of(context).accentColor,
              icon: Icon(Icons.send),
              onPressed: this.submitMessageForm,
            ),
          ),
        ),
      ),
    );
  }
}
