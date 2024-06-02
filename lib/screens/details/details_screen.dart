import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_c9/model/NewsResponse.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailsScreen extends StatelessWidget {
  static const String routeName='dets';

  @override
  Widget build(BuildContext context) {
    var args=ModalRoute.of(context)?.settings.arguments as News;
    return Scaffold(

      appBar: AppBar(
        title: Text(args.title??"" ,style: Theme.of(context).textTheme.bodySmall,),


      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: Image.network(args.urlToImage??''),
            ),


            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(args.source?.name??"",style: Theme.of(context).textTheme.bodySmall),
                  SizedBox(height: 10,),
                  Text(args.title??"",style: Theme.of(context).textTheme.bodyMedium,),
                  SizedBox(height: 10,),
                  Text("${DateTime.parse(args.publishedAt??"").hour.toString()} hours ago " 
                    ,style: Theme.of(context).textTheme.bodySmall,textAlign: TextAlign.end,),
                  SizedBox(height: 10,),
                  Text(args.description??"" ,style: Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 20) ),
                  SizedBox(height: 20,),
                  GestureDetector(
                    onTap: ()async{
                      await launchUrl(Uri.parse(args.url??""),mode:LaunchMode.externalApplication);
                    },

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                      Text("View this article"),
                      SizedBox(width: 12,),
                      Icon(Icons.arrow_right,size: 30,)
                    ],),
                  )
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
