class ProductModel {
  final dynamic id;
  final String title;
  final dynamic price;
  final String category;
  final String description;
  final String image;
  final RatingModel rating;

  ProductModel(
      {required this.id,
      required this.title,
      required this.price,
      required this.category,
      required this.description,
      required this.image,
      required this.rating});

  factory ProductModel.fromJson(jsonData) {
    return ProductModel(
        id: jsonData['id'],
        title: jsonData['title'],
        price: jsonData['price'],
        category: jsonData['category'],
        description: jsonData['description'],
        image: jsonData['image'],
        rating: RatingModel.fromJson(jsonData['rating']));
  }
}

class RatingModel {
  final dynamic rate;
  final int count;

  RatingModel({required this.rate, required this.count});

  factory RatingModel.fromJson(jsonData) {
    return RatingModel(rate: jsonData['rate'], count: jsonData['count']);
  }
} 
