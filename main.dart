import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:session4/productcard.dart';
void main() {
  runApp(const MyApp());
}
class  MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => MyApp_State();
}

class MyApp_State extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: const BackButton(),
          title: Text("Shopping app"),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
        ),
        body:Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Wrap(
                  spacing: 5,
                  runSpacing: 5,
                    children: [
                      productcard(product1),
                      productcard(product2),
                      productcard(product3),
                      productcard(product4),
                      productcard(product5),

                    ],
                  ),
              ),
              ),
            ),
      floatingActionButton:FloatingActionButton(onPressed: (){},
          backgroundColor: Colors.grey,
      child: Icon(Icons.shopping_cart,color:Colors.deepPurple))
        )
       

    );



  }
}
// Widget ProductCard()=>
//     InkWell(
//       onTap: (){
//         debugPrint("product tapped");
//       },
//       child: productcard(),
//     );
class Product{
  String imageURL;
  String name;
  double price;
  double rating;
  Product({
     required this.name,required this.imageURL,required this.price,required this.rating});}
  
  
  Product product1= Product(name: "Orange Jacket", imageURL: "https://th.bing.com/th/id/OIP.wKOfo_OgV3-wrnWNeqrmawHaJh?pid=ImgDet&rs=1", price:300,rating: 3);
  Product product2= Product(name: "Leather Jacket", imageURL: "https://th.bing.com/th/id/OIP.Ny2eqaUS-8w2EthJuXu5kAHaFj?pid=ImgDet&rs=1", price:700,rating: 4);
  Product product3= Product(name: "Black Jacket", imageURL: "https://th.bing.com/th/id/R.0ce3b2aeea9404f488b783ad3ad1c5a4?rik=zYJy%2foIHjUKI4g&riu=http%3a%2f%2fecx.images-amazon.com%2fimages%2fI%2f71Vbz4XuT1L._SR600.jpg&ehk=7wuuNJNzBUqcytskzqdISWchhOUin6g1jf0RAy6JHAE%3d&risl=&pid=ImgRaw&r=0", price: 322,rating: 4.5);
  Product product4= Product(name: "Baseball Jacket", imageURL: "https://th.bing.com/th/id/R.0f3baacef24533d7b804b422f1862f75?rik=LH92xATTSUJtEQ&pid=ImgRaw&r=0", price: 355,rating: 3.8);
  Product product5= Product(name: "Jeans Jacket", imageURL: "https://th.bing.com/th/id/R.c39736812a9453d196ad7440b0601867?rik=85pfDEqbC44QGg&pid=ImgRaw&r=0", price:450,rating: 4.23);

