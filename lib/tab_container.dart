import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_c9/news_container.dart';
import 'package:news_c9/tab_item.dart';

import 'model/SourceResponse.dart';

class TabContainer extends StatefulWidget {
  
List<Source>sourcesList;

TabContainer({required this.sourcesList,});

  @override
  State<TabContainer> createState() => _TabContainerState();
}

class _TabContainerState extends State<TabContainer> {
int selectedIndex=0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(

      length: widget.sourcesList.length,

      child: Column(
        children: [
          TabBar(
            onTap: (index){
              selectedIndex=index;
              setState(() {

              });


            },
            indicatorColor: Colors.transparent,
              isScrollable: true,

              tabs:
                widget.sourcesList.map((source)=>TabItem(
                    source: source,
                    isSelected: selectedIndex==widget.sourcesList.indexOf(source))).toList()


          ),

          Expanded(child: NewsContainer(source:widget.sourcesList[selectedIndex]))
        ],
      ),
    );
  }
}
