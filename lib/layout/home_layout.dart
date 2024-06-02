import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_c9/category_details.dart';
import 'package:news_c9/drawer_side.dart';
import 'package:news_c9/model/categoryDM.dart';
import 'package:news_c9/settings/setting_tab.dart';
import 'package:news_c9/shared/styles/my_theme.dart';

import '../category_fragment.dart';

class HomeLayout extends StatefulWidget {
  static const String routeName="home";

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

        Container(
          color: MyThemeData.whiteColor,
            child: Image.asset('assets/images/pattern.png',
              height: double.infinity,
              width: double.infinity,
              fit:BoxFit.cover,)),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text(selectedItem==DrawerSide.settings?"Settings":
             selectedCategory==null? "News App":selectedCategory!.title,style: Theme.of(context).textTheme.bodyLarge,),
            actions: [
              IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.search),)
            ],

          ),
          drawer:Drawer(
            child: DrawerSide(onSide: onSide,),
          ) ,
          body:selectedItem==DrawerSide.settings?SettingTab():

          selectedCategory==null?
          CategoryFragment(onCategoryClick: onCategoryClick,):
          CategoryDetails(category: selectedCategory!),
        )
      ],
    );
  }

  CategoryDM? selectedCategory;
  void onCategoryClick(CategoryDM newSelectedCategory){
    selectedCategory=newSelectedCategory;
    setState(() {

    });

  }


  int selectedItem=DrawerSide.categories;
  void onSide(int newSelectedItem){
    selectedItem=newSelectedItem;
    selectedCategory=null;
    Navigator.pop(context);
    setState(() {

    });

  }
}
