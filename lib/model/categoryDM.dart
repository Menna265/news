import 'dart:ui';

class CategoryDM{
  String id;
  String title;
  String image;
  Color color;

  CategoryDM({required this.id,required this.title,required this.image,required this.color});

 static List<CategoryDM>getCategories(){
   return[
     CategoryDM(id: 'sports', title:'Sports',
         image: 'assets/images/sports.png', color:Color(0xffC91C22) ),

     CategoryDM(id: 'general', title:'General',
         image: 'assets/images/Politics.png', color:Color(0xff003E90) ),

     CategoryDM(id: 'health', title:'Health',
         image: 'assets/images/health.png', color:Color(0xffED1E79) ),

     CategoryDM(id: 'business', title:'Business',
         image: 'assets/images/bussines.png', color:Color(0xffCF7E48) ),

     CategoryDM(id: 'entertainment', title:'Entertainment',
         image: 'assets/images/environment.png', color:Color(0xff4882CF) ),

     CategoryDM(id: 'science', title:'Science',
         image: 'assets/images/science.png', color:Color(0xffF2D352) ),

     CategoryDM(id: 'technology', title:'Technology',
         image: 'assets/images/sports.png', color:Color(0xff39A552) ),
   ];
    
  }
}