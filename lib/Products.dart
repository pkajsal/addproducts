import 'package:flutter/material.dart';
import 'package:product/Model.dart';

class Items extends StatefulWidget {
  const Items({super.key});

  @override
  State<Items> createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
  List items = [
    ItemModel(
        image: "images/malayali-tshirt-mydesignation-mockup-image-latest-golden-.jpg",
        title: 'colors',
        subtitle: 'shirts',
        price:'50'
    ),
    ItemModel(
        image: "images/71ShBw4g6GL._SX679_.jpg",
        title: 'colors',
        subtitle: 'shirts',
        price:'50'
    ),
    ItemModel(
        image: "images/dre3.jpg",
        title: 'colors',
        subtitle: 'shirts',
        price:'50'
    ),
    ItemModel(
        image: "images/dre4.jpg",
        title: 'colors',
        subtitle: 'shirts',
        price:'50'
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Products",style: TextStyle(color: Colors.black),),
        leading: Icon(Icons.backspace_rounded,color: Colors.black,),
        actions: [
          Icon(Icons.add_box,color: Colors.black,)
        ],


        backgroundColor: Colors.white70,
      ),
      body: 
         Container(
            padding: EdgeInsets.all(12.0),
            child: Expanded(
              child: GridView.builder(
                itemCount: items.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 4.0,
                    mainAxisSpacing: 4.0
                ),
                itemBuilder: (BuildContext context, int index){
    return Expanded(
      child: Container(

      decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(
      Radius.circular(20.0),
      ),
      ),
      child: Column(
      children: [
      Image.asset(items[index].image,fit: BoxFit.cover,),
      Text(
      items[index].title,


      ),
        Text(
          items[index].subtitle,


        ),
        Text(
          items[index].price,


        ),
      ],
      ),
      ),
    );

    },

              ), ),),
      );
  }
}
