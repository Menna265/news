import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'model/SourceResponse.dart';

class TabItem extends StatelessWidget {
  Source source;
  bool isSelected;

  TabItem({required this.source,required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      padding: EdgeInsets.symmetric(vertical: 8,horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          width: 3,
            color:Theme.of(context).primaryColor,),
            color:isSelected?
            Theme.of(context).primaryColor:
            Colors.transparent),

      child: Text(source.name??'',
        style:isSelected?
        Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.white):
        Theme.of(context).textTheme.bodyMedium!.copyWith(color: Theme.of(context).primaryColor) ,),

    );

  }
}
