
import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:session4/main.dart';

Widget productcard(Product p)=>
    Card(
      child: SizedBox(
        width: 190,
        height: 250,
        child: Padding(
          padding:const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: SizedBox(
                  height: 140,
                  child: Image.network(p.imageURL,height: 200,width: 200,),),

              ),
              const SizedBox(height: 20,),
               Text("${p.name}",style: TextStyle(fontSize: 15),),
              const SizedBox(height: 10,),
              RatingBarIndicator(rating:p.rating, itemCount: 5,
             itemBuilder: (context, _) => Icon(Icons.star,color: Colors.yellow,),
              physics: const BouncingScrollPhysics(),itemSize: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("\$${p.price}",style: TextStyle(fontSize: 15),),
                  Icon(Icons.shopping_cart,color: Colors.deepPurple,)
                ],
              ),



            ],
          ),
        ),
      ),
    );
