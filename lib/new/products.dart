import 'package:get/get.dart';

class Products extends GetxController {
  List<dynamic> products = [

    {
      'id': 1,
      'title': 'LED light',
      'category': 'Electronics',
      'remark': 'Popular',
      'image': 'assets/1.png',
      'price': '500',
      'rating': '4.9',
      'description': 'Hello friend that is shoe light',
      'images': [
        'assets/1.png',
        'assets/shoe.png',
        'assets/1.png',
        'assets/shoe.png'
      ],
      'review': [
        {'name': 'Abdullah', 'text': 'The Product is Good'},
        {'name': 'Kafi', 'text': 'The Product is Bad'},
      ]
    },













    {
      'id': 2,
      'title': 'Shoe',
      'category': 'Fashion',
      'remark': 'Special',
      'image': 'assets/shoe.png',
      'images': [
        'assets/1.png',
        'assets/shoe.png',
        'assets/1.png',
        'assets/shoe.png'
      ],
      'price': '700',
      'rating': '4.8',
      'review': [
        {'name': 'Abdullah', 'text': 'The Product is Good'}
      ]
    },
    {
      'id': 3,
      'title': 'Motor',
      'category': 'Electronics',
      'remark': 'New',
      'image': 'assets/electronics_icon.png',
      'price': '400',
      'rating': '4.9',
      'images': [
        'assets/1.png',
        'assets/shoe.png',
        'assets/1.png',
        'assets/shoe.png'
      ],
    },
    {
      'id': 4,
      'title': 'T-shirt',
      'category': 'Fashion',
      'remark': 'Special',
      'image': 'assets/fashion_icon.png',
      'price': '700',
      'rating': '4.8',
      'images': [
        'assets/1.png',
        'assets/shoe.png',
        'assets/1.png',
        'assets/shoe.png'
      ],
    },
    {
      'id': 5,
      'title': 'Rechargeable Fan',
      'category': 'Electronics',
      'remark': 'Popular',
      'image': 'assets/fruits_icon.png',
      'images': [
        'assets/1.png',
        'assets/shoe.png',
        'assets/1.png',
        'assets/shoe.png'
      ],
      'price': '500',
      'rating': '4.9',
      'description': 'Hello friend that is shoe light',
      'review': [
        {'name': 'Abdullah', 'text': 'The Product is Good'},
        {'name': 'Kafi', 'text': 'The Product is Bad'},
      ]
    },
    {
      'id': 6,
      'title': 'Mango',
      'category': 'Food',
      'remark': 'New',
      'image': 'assets/fruits_icon.png',
      'images': [
        'assets/1.png',
        'assets/shoe.png',
        'assets/1.png',
        'assets/shoe.png'
      ],
      'price': '120',
      'rating': '4.2',
      'description': 'Hello friend that is shoe light',
      'review': [
        {'name': 'Roni', 'text': 'The Product is Good'},
        {'name': 'Ayesha', 'text': 'The Product is Bad'},
      ]
    },
    {
      'id': 7,
      'title': 'Bed',
      'category': 'Furniture',
      'remark': 'Popular',
      'image': 'assets/fruits_icon.png',
      'images': [
        'assets/1.png',
        'assets/shoe.png',
        'assets/1.png',
        'assets/shoe.png'
      ],
      'price': '20',
      'rating': '4.7',
      'description': 'Hello friend that is shoe light',
      'review': [
        {'name': 'Roni', 'text': 'The Product is Good'},
        {'name': 'Ayesha', 'text': 'The Product is Bad'},
      ]
    },



  ];

  List<dynamic> carts = [];
  List<dynamic> wishList = [];

  List<int> cartQuantity =[];

  int _totalPrice = 0;

  int get getTotalPrice => _totalPrice;

  void setCartQuantity ()
  {
    cartQuantity = List<int>.filled(50, 1);
    // for(int i =0;i<50; i++)
    //   {
    //     cartQuantity[i] = 1;
    //   }
    update();
  }

  void addCartQ(int index)
  {
    if(cartQuantity[index] <10)
      {
        cartQuantity[index] +=1;
      }
    update();
  }
  void subCartQ(int index)
  {
    if(cartQuantity[index] >1)
      {
        cartQuantity[index] -=1;
      }
    update();
  }

  void calculateTotalPrice()
  {
    _totalPrice = 0;
    for(int i=0;i<carts.length;i++)
      {
        print('cartQuantity[i]cartQuantity[i]cartQuantity[i]cartQuantity[i]cartQuantity[i]');
        print(int.parse(carts[i]['price']));
        print(cartQuantity[i]);
        print(_totalPrice);
        _totalPrice += int.parse(carts[i]['price']) * cartQuantity[i];
        print(_totalPrice);
      }
    update();

  }


  void updateProducts() {
    update();
  }
}
