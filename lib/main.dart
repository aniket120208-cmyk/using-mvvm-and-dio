import 'package:flutter/material.dart';
import 'package:mvvm_example/models/card_models.dart';
import 'package:mvvm_example/views/card_view.dart';
import 'package:mvvm_example/viewmodels/product_api.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('PRODUCTS'),),
        body: FutureBuilder<List<Product>>(
          future: ApiService().getProduct(), 
          builder: (context, snapshot) {
            if(snapshot.connectionState == ConnectionState.waiting){
              return Center(child: CircularProgressIndicator(),);
            }
            if (!snapshot.hasData || snapshot.data!.isEmpty) {
              return const Center(
                child: Text('No products found'),
              );
            }
            final products = snapshot.data!;
            return ListView.builder(
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      final product = products[index];
                    return CardView(name: product.name, price: product.price, img: product.img);
                  },
            );
            }
        ),
      ),
    );
  }
}