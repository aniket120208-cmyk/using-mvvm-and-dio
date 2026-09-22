import 'package:dio/dio.dart';
import 'package:mvvm_example/models/card_models.dart';

class ApiService{
  final Dio dio = Dio(
    BaseOptions(baseUrl: 'https://dummyjson.com'),
  );
  Future<List<Product>> getProduct() async{
    final response = await dio.get('/products');
    final List products = response.data['products'];
    return products
        .map((json) => Product.fromJson(json))
        .toList();
  }
}