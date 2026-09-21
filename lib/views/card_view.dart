import 'package:flutter/material.dart';

class CardView extends StatelessWidget{
  const CardView({required this.name,required this.price,super.key});
  final String name;
  final String price;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Image.network('https://i1.sndcdn.com/artworks-tyR6xrLf2oaQ8Fxi-pzgT9A-t500x500.jpg',
            height: 100,
            width: 100,
            fit: BoxFit.fill,
          ),
          SizedBox(width: 100,),
          Column(
            children: [
              Text(name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
              SizedBox(height: 10,),
              Text(price, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),)
            ],
          )
        ],
      ),
    );
  }
}