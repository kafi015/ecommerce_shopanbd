import 'package:ecommerce_shopanbd/data/models/product.dart';

class ProductRemarkModel {
  String? msg;
  List<Product>? productRemarkData;

  ProductRemarkModel({this.msg, this.productRemarkData});

  ProductRemarkModel.fromJson(Map<String, dynamic> json) {
    msg = json['msg'];
    if (json['data'] != null) {
      productRemarkData = <Product>[];
      json['data'].forEach((v) {
        productRemarkData!.add(Product.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['msg'] = msg;
    if (productRemarkData != null) {
      data['data'] = productRemarkData!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

