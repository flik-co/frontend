import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../../components/chat_list/chat_list.dart';
import '../../store/chats.dart';

final chatsStore = ChatsStore();

class DealsTab extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    List<Map> dealsIAmMember = [
      {
        'title': 'Tomates',
        'last_message': {
          'created_by': {
            'name': 'Flik'
          },
          'content': 'Proposta de R\$ 12,90 apresentada.',
        },
      },
      {
        'title': 'Pilhas AAA',
        'last_message': {
          'created_by': {
            'name': 'Joana'
          },
          'content': 'Não gostei dessas cores.',
        },
      },
    ];

    return new ListView(
      shrinkWrap: true,
      children: [
        Padding(
          padding: EdgeInsets.all(8),
          child: Text('Meus pregões'),
        ),
        Observer(
          builder: (_) => ChatList(
            chats: chatsStore.myChats,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8),
          child: Text('Pregões que participo'),
        ),
        Observer(
          builder: (_) => ChatList(
            chats: chatsStore.chatsIParticipate,
          ),
        ),
      ],
    );
  }
}
