
import 'package:news_c9/layout/home_layout.dart';
import 'package:news_c9/screens/details/details_screen.dart';
import 'package:news_c9/screens/webview.dart';
import 'package:news_c9/shared/styles/my_theme.dart';
import 'package:flutter/material.dart';
import 'category_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeLayout.routeName ,
      routes: {
        HomeLayout.routeName:(context)=>HomeLayout(),
        DetailsScreen.routeName:(context)=>DetailsScreen(),
        WebView.routeName:(context)=>WebView(),

        // CategoryDetails.routeName:(context)=>CategoryDetails(),

      },
      theme: MyThemeData.lightTheme,
    );
  }

}
