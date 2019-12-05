import 'package:flutter/material.dart';

import 'logic.dart';

class Galery extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView.count(
        crossAxisCount: 4,
        children: _generateCards(Logic.history),
      ),
    );
  }

  List<Widget> _generateCards(List<Color> colors) {
    List<Widget> cards = [];
    for (Color usedColor in colors.reversed) {
      Widget card = FlatButton(
        onPressed: () {},
        color: usedColor,
        child: Container(),
      );
      cards.add(card);
    }
    return cards;
  }
}
