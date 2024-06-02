import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_c9/model/NewsResponse.dart';
import 'package:news_c9/screens/details/details_screen.dart';

class NewsItem extends StatefulWidget {
  News news;
  NewsItem({required this.news});

  @override
  State<NewsItem> createState() => _NewsItemState();
}

class _NewsItemState extends State<NewsItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, DetailsScreen.routeName,arguments:widget.news);
        setState(() {

        });
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: Image.network(widget.news.urlToImage??''),
          ),
          SizedBox(height: 10,),
          Text(widget.news.author??'',style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.grey),),
          SizedBox(height: 10,),
          Text(widget.news.title??'',style: Theme.of(context).textTheme.bodyMedium),
          SizedBox(height: 10,),
          Text(widget.news.publishedAt??'',textAlign: TextAlign.end,style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.grey),),

        ],
      ),
    );
  }
}
