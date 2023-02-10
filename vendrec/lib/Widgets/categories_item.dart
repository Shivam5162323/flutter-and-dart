import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vendrec/Meals_Scr.dart';

class CategoriesItem extends StatelessWidget {
  final String title;
  final Color color;
  final String id;

  CategoriesItem(this.id,this.title, this.color);


  void selectCategory(BuildContext ctx){
    Navigator.of(ctx).push(CupertinoPageRoute(builder: (_){
      return MealsScr(id,title);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=> selectCategory(context),
      splashColor: Colors.pink,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: EdgeInsets.all(15),
        child: Align(
          alignment: Alignment.bottomCenter,
            child: Text(
          title,
          style: TextStyle(
            fontSize: 20,
          ),

        )),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.65),
              color.withOpacity(1),
            ],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
          borderRadius: BorderRadius.circular(15),
          // border: Border.all(color: Colors.pink,width: 1)
        ),
      ),
    );
  }
}
