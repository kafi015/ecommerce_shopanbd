import 'package:ecommerce_shopanbd/data/models/product.dart';

class ProductByCategoryModel {
  String? msg;
  List<Product>? productCategoryData;

  ProductByCategoryModel({this.msg, this.productCategoryData});

  ProductByCategoryModel.fromJson(Map<String, dynamic> json) {
    msg = json['msg'];
    if (json['data'] != null) {
      productCategoryData = <Product>[];
      json['data'].forEach((v) {
        productCategoryData!.add(Product.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['msg'] = msg;
    if (productCategoryData != null) {
      data['data'] = productCategoryData!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

