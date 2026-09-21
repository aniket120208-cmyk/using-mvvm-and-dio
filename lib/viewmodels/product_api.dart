import 'package:dio/dio.dart';

class ApiService{
  final Dio dio = Dio(
    BaseOptions(baseUrl: 'https://dummyjson.com/products'),
  );
  Future<void> getProduct() async{
    final response = await dio.get('/products');
    return response.data['products'];
  }
}