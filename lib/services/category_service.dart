import '../models/productmoel.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CategoriesServices {
  Future<List<ProductModel>> getCategoriesProduct(
      {required String categoryName}) async {
    http.Response response = await http.get(
        Uri.parse('https://fakestoreapi.com/products/category/$categoryName'));
    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);
      List<ProductModel> productsList = [];
      for (int i = 0; i < data.length; i++) {
        productsList.add(
          ProductModel.fromJson(data[i]),
        );
      }
      return productsList;
    } else {
      throw Exception('problem with statuscode ${response.statusCode}');
    }
  }
}
