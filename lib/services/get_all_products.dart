import 'package:storeapp/models/productmoel.dart';
import '../helper/api.dart';

class AllProductsSrevice {
  Future<List<ProductModel>> getAllProducts() async {
    List<dynamic> data =
      await Api().get(url: 'https://fakestoreapi.com/products');
   
    List<ProductModel> productsList = [];
  for (int i = 0; i < data.length; i++) {
    productsList.add(
      ProductModel.fromJson(data[i]),
    );
  }
  return productsList;

  }
}
