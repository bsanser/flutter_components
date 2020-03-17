import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final options = ['One', 'Two', 'Three', 'Four', 'Five'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (Text('Home Page')),
        centerTitle: true,
      ),
      body: ListView(children: _createShortItems()),
    );
  }

  List<Widget> _createItems() {
    List<Widget> list = new List<Widget>();

    for (String option in options) {
      final widget = ListTile(
        title: Text(option),
      );
      list..add(widget)..add(Divider());
    }
  }

  List<Widget> _createShortItems() {
    return options.map((option) {
      return Column(children: <Widget>[
        ListTile(
          title: Text(option),
          subtitle: Text('This is the subtitle'),
          leading: Icon(Icons.account_balance_wallet),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: (){},
        ),
        Divider()
      ]);
    }).toList();
  }
}
