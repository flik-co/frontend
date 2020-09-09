import 'package:flutter/material.dart';
import '../../components/options_list/option_list.dart';

class MenuTab extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    List<Map> myDeals = [
      {
        'icon': Icons.favorite,
        'subtitle': 'É incrível lhe receber aqui!',
        'title': 'Boas Vindas',
      },
      {
        'icon': Icons.search,
        'subtitle': 'Busque por pregões próximos a você.',
        'title': 'Encontrar Pregões',
      },
      {
        'icon': Icons.chat,
        'subtitle': 'Junte-se a outros comerciantes para negociar.',
        'title': 'Iniciar Pregão',
      },
    ];

    return new OptionList(options: myDeals);
  }
}
