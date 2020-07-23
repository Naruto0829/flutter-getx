import 'package:get/get.dart';

class ProductModel {
  ProductModel({
    int id,
    String name,
    String category,
    double price,
    String image,
  }) {
    this.id = id;
    this.name = name;
    this.category = category;
    this.price = price;
    this.image = image;
    this.like = false;
  }

  RxInt _id = RxInt();
  set id(int value) => _id.value = value;
  int get id => _id.value;

  RxString _name = RxString();
  set name(String value) => _name.value = value;
  String get name => _name.value;

  RxString _category = RxString();
  set category(String value) => _category.value = value;
  String get category => _category.value;

  RxDouble _price = RxDouble();
  set price(double value) => _price.value = value;
  double get price => _price.value;

  RxString _image = RxString();
  set image(String value) => _image.value = value;
  String get image => _image.value;

  RxBool _like = RxBool();
  set like(bool value) => _like.value = value;
  bool get like => _like.value;

  String get priceBrl {
    return "R\$" + this.price.toStringAsFixed(2);
  }

}
