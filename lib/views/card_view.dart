import 'package:flutter/material.dart';

class CardView extends StatelessWidget{
  const CardView({required this.name,required this.price,required this.img,super.key});
  final String name;
  final String price;
  final String img;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Image.network(img,
            height: 100,
            width: 100,
            fit: BoxFit.fill,
          ),
          SizedBox(width: 50,),
          Container(
            padding: EdgeInsets.only(top: 25),
            height: 100,
            width: 100,
            child: Column(children: [
              Text(name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10,), textAlign: TextAlign.center,),
              SizedBox(height: 10,),
              Text('\$$price', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),)
            ],
            ),
          )
        ],
      ),
    );
  }
}