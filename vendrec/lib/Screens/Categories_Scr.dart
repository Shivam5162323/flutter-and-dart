import 'package:flutter/material.dart';
import './dummy_data.dart';
import './categories_item.dart';

class CategoriesScr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 10,
          title: Text(
            'VenDRec',
            style: TextStyle(fontSize: 25, fontFamily: 'Raleway'),
          ),

        ),
        body: GridView(
          padding: EdgeInsets.all(15),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            mainAxisSpacing: 20,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisExtent: 200,
          ),
          children: DUMMY_CATEGORIES
              .map((catData) => CategoriesItem(catData.id,catData.title, catData.color))
              .toList(),
        ));
  }
}
