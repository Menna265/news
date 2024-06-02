import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_c9/api_manager.dart';
import 'package:news_c9/model/SourceResponse.dart';
import 'package:news_c9/model/categoryDM.dart';
import 'package:news_c9/tab_container.dart';

class CategoryDetails extends StatefulWidget {
  static const String routeName='category';
  CategoryDM category;
  CategoryDetails({required this.category});

  @override
  State<CategoryDetails> createState() => _CategoryDetailsState();
}

class _CategoryDetailsState extends State<CategoryDetails> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<SourceResponse>(
          future: ApiManager.getSources(widget.category.id),
          builder: (context,snapshot){
            if(snapshot.connectionState== ConnectionState.waiting){
              return Center(child: CircularProgressIndicator());
            }else if (snapshot.hasError){
              // error on client
              return Column(
                children: [
                  Center(child: Text("Something went wrong")),
                  ElevatedButton(onPressed: (){
                    ApiManager.getSources(widget.category.id);
                    setState(() {

                    });
                  }, child: Text("Try again"))
                ],
              );
            }

            if(snapshot.data?.status!='ok'){
              // error on server
              return Column(
                children: [
                  Text(snapshot.data?.message??''),
                  ElevatedButton(onPressed: (){
                    ApiManager.getSources(widget.category.id);

                  }, child: Center(child: Text('Try again')))
                ],
              );
            }
            var sourcesList=snapshot.data?.sources??[];
            return TabContainer(sourcesList:sourcesList, );
          })
    ;


  }
}
