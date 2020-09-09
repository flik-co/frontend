import 'package:flutter/material.dart';
import 'chat_list_item.dart';

class ChatList extends StatelessWidget {
  ChatList({@required this.chats});

  final List<Map> chats;

  @override
  Widget build(BuildContext context) {
    return new Card(
      child: Column(
        children: this.chats.map((chat) => ChatListItem(chat: chat)).toList(),
      ),
    );
  }
}
