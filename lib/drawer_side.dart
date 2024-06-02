import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_c9/shared/styles/my_theme.dart';

class DrawerSide extends StatelessWidget {
  static const int categories=1;
  static const int settings=2;
  Function onSide;
  DrawerSide({required this.onSide});


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width:double.infinity ,
          color: MyThemeData.primaryColor,
          padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height*0.1,),
          child: Center(child: Text('News App!',style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: MyThemeData.whiteColor),)),
          
        ),
        InkWell(
          onTap: (){
            onSide(DrawerSide.categories);
          },
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Icon(Icons.list),
                SizedBox(width: 10,),
                Text('Categories')
              ],
            ),
          ),
        ),

        InkWell(
          onTap: (){
            onSide(DrawerSide.settings);
          },
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Icon(Icons.settings),
                SizedBox(width: 10,),
                Text('Settings')
              ],
            ),
          ),
        ),
      ],
    );
  }
}
