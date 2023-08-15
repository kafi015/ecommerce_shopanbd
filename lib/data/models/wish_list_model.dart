import 'product.dart';

class WishListModel {
  String? msg;
  List<WishListData>? wishListData;

  WishListModel({this.msg, this.wishListData});

  WishListModel.fromJson(Map<String, dynamic> json) {
    msg = json['msg'];
    if (json['data'] != null) {
      wishListData = <WishListData>[];
      json['data'].forEach((v) {
        wishListData!.add(WishListData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['msg'] = msg;
    if (wishListData != null) {
      data['data'] = wishListData!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class WishListData {
  int? id;
  String? email;
  int? productId;
  String? createdAt;
  String? updatedAt;
  Product? product;

  WishListData(
      {this.id,
      this.email,
      this.productId,
      this.createdAt,
      this.updatedAt,
      this.product});

  WishListData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    productId = json['product_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    product =
        json['product'] != null ? Product.fromJson(json['product']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['email'] = email;
    data['product_id'] = productId;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    if (product != null) {
      data['product'] = product!.toJson();
    }
    return data;
  }
}
