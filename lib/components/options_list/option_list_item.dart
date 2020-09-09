import 'package:flutter/material.dart';

class OptionListItem extends StatelessWidget {
  OptionListItem({@required this.option});

  final Map option;

  @override
  Widget build(BuildContext context) {
    Icon icon = Icon(this.option['icon']);
    String subtitle = this.option['subtitle'];
    String title = this.option['title'];

    return new ListTile(
      leading: CircleAvatar(child: icon),
      onTap: () {},
      title: Text(
        title,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Text(
        subtitle,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
