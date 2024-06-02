import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_c9/api_manager.dart';
import 'package:news_c9/model/SourceResponse.dart';
import 'package:news_c9/news_item.dart';

class NewsContainer extends StatefulWidget {
 Source source;
 NewsContainer({required this.source});

  @override
  State<NewsContainer> createState() => _NewsContainerState();
}

class _NewsContainerState extends State<NewsContainer> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: ApiManager.getNewsBySourceId(widget.source.id??''),
        builder:(context,snapshot){
          if(snapshot.connectionState==ConnectionState.waiting){
            return Center(
                child: CircularProgressIndicator(
                  color: Theme.of(context).primaryColor,
                ));
          }else if(snapshot.hasError){
            return Column(
              children: [
                Text('Something went wrong'),
                ElevatedButton(onPressed: (){
                  ApiManager.getNewsBySourceId(widget.source.id??'');
                  setState(() {

                  });

                },
                    child: Text('Try Again'))
              ],
            );
          }
          if(snapshot.data?.status!='ok'){
            return Text(snapshot.data?.message??'Something went wrong');
          }
          var newList=snapshot.data?.articles??[];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
                itemBuilder: (context,index){
                  return NewsItem(news: newList[index]);
                },
                itemCount: newList.length,),
          );
        });
  }
}
