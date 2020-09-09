import 'package:flutter/material.dart';
import '../../screens/chat/chat.dart';

class ChatListItem extends StatelessWidget {
  ChatListItem({@required this.chat});

  final Map chat;

  @override
  Widget build(BuildContext context) {
    String id = this.chat['id'];

    String title = this.chat['title'];
    String avatarLetter = title.substring(0, 1);

    Map lastMessage = this.chat['last_message'];
    String authorName = lastMessage['created_by']['name'];
    String content = lastMessage['content'];
    String subtitle = '$authorName: $content';

    return new ListTile(
      leading: CircleAvatar(child: Text(avatarLetter)),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ChatScreen(id: id)),
        );
      },
      subtitle: Text(
        subtitle,
        overflow: TextOverflow.ellipsis,
      ),
      title: Text(
        title,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
