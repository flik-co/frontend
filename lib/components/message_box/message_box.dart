import 'package:flutter/material.dart';

class MessageBox extends StatelessWidget {
  MessageBox({@required this.message});

  final Map message;

  @override
  Widget build(BuildContext context) {
    String authorName = this.message['created_by']['name'];
    String content = this.message['content'];

    return new Card(
      margin: EdgeInsets.only(bottom: 16.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(8),
          bottomRight: Radius.circular(8),
          topLeft: Radius.zero,
          topRight: Radius.circular(8),
        )
      ),
      child: Padding(
        child: Column(
          children: [
            Text(
              authorName,
              style: TextStyle(
                color: Theme.of(context).accentColor,
              ),
            ),
            Text(content, softWrap: true),
          ],
          crossAxisAlignment: CrossAxisAlignment.start,
        ),
        padding: EdgeInsets.all(8.0),
      ),
    );
  }
}
