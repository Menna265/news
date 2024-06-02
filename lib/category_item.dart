import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_c9/model/categoryDM.dart';
import 'package:news_c9/shared/styles/my_theme.dart';

class CategoryItem extends StatelessWidget {
 CategoryDM categoryDM;
 int index;
 CategoryItem({required this.categoryDM,required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      decoration: BoxDecoration(
        color: categoryDM.color,
        borderRadius: BorderRadius.only(
          topLeft:Radius.circular(20) ,
          topRight:Radius.circular(20) ,
          bottomRight: Radius.circular(index%2==0?0:20),
          bottomLeft: Radius.circular(index%2!=0?0:20) ,
        )
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Column(
          children: [
            Image.asset(categoryDM.image,height: MediaQuery.of(context).size.height*0.15,),
            SizedBox(height: 10,),
          Text(categoryDM.title,
            style:Theme.of(context).textTheme.bodyMedium!.copyWith(color: MyThemeData.whiteColor) ,),
          ],
        ),
      ),
    );
  }
}
