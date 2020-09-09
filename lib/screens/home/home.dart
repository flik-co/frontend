import 'package:flutter/material.dart';
import 'deals_tab.dart';
import 'menu_tab.dart';

class HomeScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(
                text: 'MENU',
              ),
              Tab(
                text: 'PREGÕES',
              ),
            ],
          ),
          elevation: 1,
          title: Text('Flik'),
        ),
        body: TabBarView(
          children: [
            MenuTab(),
            DealsTab(),
          ],
        ),
      ),
    );
  }
}
