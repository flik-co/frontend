import 'package:flutter/material.dart';
import 'option_list_item.dart';

class OptionList extends StatelessWidget {
  OptionList({@required this.options});

  final List<Map> options;

  @override
  Widget build(BuildContext context) {
    return new Card(
      child: Column(
        children: this.options.map((option) => OptionListItem(option: option)).toList(),
      ),
    );
  }
}
