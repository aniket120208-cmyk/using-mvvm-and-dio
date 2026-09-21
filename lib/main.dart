import 'package:flutter/material.dart';
import 'package:mvvm_example/models/card_models.dart';
import 'package:mvvm_example/views/card_view.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    final Product product = Product(name: 'hello', price: '99');
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('PRODUCTS'),),
        body: 
        ListView.builder(
          itemCount: 2,
          itemBuilder: (context, index) {
            return CardView(name: product.name, price: product.price);
          },
        )
      ),
    );
  }
}