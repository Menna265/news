import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'category_item.dart';
import 'model/categoryDM.dart';

class CategoryFragment extends StatelessWidget {
 var lists= CategoryDM.getCategories();
 Function onCategoryClick ;
 CategoryFragment({required this.onCategoryClick});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Pick your category \n of interest',style:Theme.of(context).textTheme.bodyMedium,),
          Expanded(
            child: GridView.builder(
                gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount:2,
                    mainAxisSpacing:15 ,
                  crossAxisSpacing:20 ,

                ),
                itemBuilder: (context,index){
                  return InkWell(
                    onTap: (){
                      onCategoryClick(lists[index]);
                    },
                      child: CategoryItem(categoryDM:lists[index] , index: index,));
                },
            itemCount: lists.length,),
          )
        ],
      ),
    );
  }
}
