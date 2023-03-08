import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:storeapp/models/productmoel.dart';

class AllProductsSrevice {
  Future<List<ProductModel>> getAllProducts() async {
    http.Response response =
        await http.get(Uri.parse('https://fakestoreapi.com/products'));
    if (response.statusCode==200) {
  List<dynamic> data = jsonDecode(response.body);
  List<ProductModel> productsList = [];
  for (int i = 0; i < data.length; i++) {
    productsList.add(
      ProductModel.fromJson(data[i]),
    );
  }
  return productsList;
}else {
      throw Exception('problem with statuscode ${response.statusCode}');
    }
  }
}
