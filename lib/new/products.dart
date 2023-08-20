import 'package:get/get.dart';

class Products extends GetxController {
  List<dynamic> products = [


    {
      'id': 1,
      'title': 'LED light',
      'category': 'Electronics',
      'remark': 'Popular',
      'image': 'assets/ep1a.jpeg',
      'price': '500',
      'rating': '4.9',
      'description': 'super LED light',
      'images': [
        'assets/ep1a.jpeg',
        'assets/ep1b.jpeg',
        'assets/ep1a.jpeg',
        'assets/ep1b.jpeg'
      ],
      'review': [
        {'name': 'Abdullah', 'text': 'The Product is Good'},
        {'name': 'Kafi', 'text': 'The Product is Bad'},
      ]
    },
    {
      'id': 2,
      'title': 'Fridge',
      'category': 'Electronics',
      'remark': 'New',
      'image': 'assets/ep2a.jpeg',
      'price': '50000',
      'rating': '4.7',
      'description': 'Brand new fridge ',
      'images': [
        'assets/ep2a.jpeg',
        'assets/ep2b.jpeg',
        'assets/ep2a.jpeg',
        'assets/ep2b.jpeg'
      ],
      'review': [
        {'name': 'Abdullah', 'text': 'The Product is Good'},
        {'name': 'Kafi', 'text': 'The Product is Bad'},
      ]
    },
    {
      'id': 3,
      'title': 'Air conditionar',
      'category': 'Electronics',
      'remark': 'Special',
      'image': 'assets/ep3a.png',
      'price': '80000',
      'rating': '4.9',
      'description': 'Walton Inverter AC',
      'images': [
        'assets/ep3a.png',
        'assets/ep3b.jpeg',
        'assets/ep3a.png',
        'assets/ep3b.jpeg'
      ],
      'review': [
        {'name': 'Abdullah', 'text': 'The Product is Good'},
        {'name': 'Kafi', 'text': 'The Product is Bad'},
      ]
    },
    {
      'id': 4,
      'title': 'Fan',
      'category': 'Electronics',
      'remark': 'Popular',
      'image': 'assets/ep4a.jpeg',
      'price': '5000',
      'rating': '4.9',
      'description': 'BRB Fan',
      'images': [
        'assets/ep4a.jpeg',
        'assets/ep4b.png',
        'assets/ep4a.jpeg',
        'assets/ep4b.png'
      ],
      'review': [
        {'name': 'Abdullah', 'text': 'The Product is Good'},
        {'name': 'Kafi', 'text': 'The Product is Bad'},
      ]
    },{
      'id': 5,
      'title': 'Air cooler',
      'category': 'Electronics',
      'remark': 'Popular',
      'image': 'assets/ep5a.jpeg',
      'price': '18500',
      'rating': '4.7',
      'description': 'Walton Air cooler',
      'images': [
        'assets/ep5a.jpeg',
        'assets/ep5b.jpeg',
        'assets/ep5a.jpeg',
        'assets/ep5b.jpeg'
      ],
      'review': [
        {'name': 'Abdullah', 'text': 'The Product is Good'},
        {'name': 'Kafi', 'text': 'The Product is Bad'},
      ]
    },{
      'id': 6,
      'title': 'Water pump',
      'category': 'Electronics',
      'remark': 'New',
      'image': 'assets/ep6a.jpeg',
      'price': '30000',
      'rating': '4.9',
      'description': 'water pump',
      'images': [
        'assets/ep6a.jpeg',
        'assets/ep6b.jpeg',
        'assets/ep6a.jpeg',
        'assets/ep6b.jpeg'
      ],
      'review': [
        {'name': 'Abdullah', 'text': 'The Product is Good'},
        {'name': 'Kafi', 'text': 'The Product is Bad'},
      ]
    },{
      'id': 7,
      'title': 'Electric Oven',
      'category': 'Electronics',
      'remark': 'Popular',
      'image': 'assets/ep7a.jpeg',
      'price': '12000',
      'rating': '4.7',
      'description': 'LG electric oven',
      'images': [
        'assets/ep7a.jpeg',
        'assets/ep7b.jpeg',
        'assets/ep7a.jpeg',
        'assets/ep7b.jpeg'
      ],
      'review': [
        {'name': 'Abdullah', 'text': 'The Product is Good'},
        {'name': 'Kafi', 'text': 'The Product is Bad'},
      ]
    },{
      'id': 8,
      'title': 'Oven',
      'category': 'Electronics',
      'remark': 'Special',
      'image': 'assets/ep8a.jpeg',
      'price': '4500',
      'rating': '4.6',
      'description': 'LG Microwave oven',
      'images': [
        'assets/ep8a.jpeg',
        'assets/ep8b.jpeg',
        'assets/ep8a.jpeg',
        'assets/ep8b.jpeg'
      ],
      'review': [
        {'name': 'Abdullah', 'text': 'The Product is Good'},
        {'name': 'Kafi', 'text': 'The Product is Bad'},
      ]
    },{
      'id': 9,
      'title': 'Earpods',
      'category': 'Electronics',
      'remark': 'Special',
      'image': 'assets/ep9a.jpeg',
      'price': '5000',
      'rating': '4.5',
      'description': 'Lenovo premium earpods',
      'images': [
        'assets/ep9a.jpeg',
        'assets/ep9b.jpeg',
        'assets/ep9a.jpeg',
        'assets/ep9b.jpeg'
      ],
      'review': [
        {'name': 'Abdullah', 'text': 'The Product is Good'},
        {'name': 'Kafi', 'text': 'The Product is Bad'},
      ]
    },{
      'id': 10,
      'title': 'Tv',
      'category': 'Electronics',
      'remark': 'Popular',
      'image': 'assets/ep10a.jpeg',
      'price': '50000',
      'rating': '4.9',
      'description': 'Samsung Smart TV',
      'images': [
        'assets/ep10a.jpeg',
        'assets/ep10b.jpeg',
        'assets/ep10a.jpeg',
        'assets/ep10b.jpeg'
      ],
      'review': [
        {'name': 'Abdullah', 'text': 'The Product is Good'},
        {'name': 'Kafi', 'text': 'The Product is Bad'},
      ]
    },{
      'id': 11,
      'title': 'Biscuits',
      'category': 'Food',
      'remark': 'Popular',
      'image': 'assets/fp11a.jpeg',
      'price': '250',
      'rating': '4.5',
      'description': 'premium diet biscuits',
      'images': [
        'assets/fp11a.jpeg',
        'assets/fp11b.jpeg',
        'assets/fp11a.jpeg',
        'assets/fp11b.jpeg'
      ],
      'review': [
        {'name': 'Abdullah', 'text': 'The Product is Good'},
        {'name': 'Kafi', 'text': 'The Product is Bad'},
      ]
    },{
      'id': 12,
      'title': 'Pizza',
      'category': 'Food',
      'remark': 'Special',
      'image': 'assets/fp12a.jpeg',
      'price': '500',
      'rating': '4.9',
      'description': 'Frozen Pizza',
      'images': [
        'assets/fp12a.jpeg',
        'assets/fp12b.jpeg',
        'assets/fp12a.jpeg',
        'assets/fp12b.jpeg'
      ],
      'review': [
        {'name': 'Abdullah', 'text': 'The Product is Good'},
        {'name': 'Kafi', 'text': 'The Product is Bad'},
      ]
    },{
      'id': 13,
      'title': 'Beef',
      'category': 'Food',
      'remark': 'New',
      'image': 'assets/fp13a.jpeg',
      'price': '1000',
      'rating': '4.9',
      'description': 'Bengal meat beef',
      'images': [
        'assets/fp13a.jpeg',
        'assets/fp13b.jpeg',
        'assets/fp13a.jpeg',
        'assets/fp13b.jpeg'
      ],
      'review': [
        {'name': 'Abdullah', 'text': 'The Product is Good'},
        {'name': 'Kafi', 'text': 'The Product is Bad'},
      ]
    },{
      'id': 14,
      'title': 'Nuggets',
      'category': 'Food',
      'remark': 'Popular',
      'image': 'assets/fp14a.jpeg',
      'price': '180',
      'rating': '4.9',
      'description': 'kazi farm chicken nuggets',
      'images': [
        'assets/fp14a.jpeg',
        'assets/fp14b.jpeg',
        'assets/fp14a.jpeg',
        'assets/fp14b.jpeg'
      ],
      'review': [
        {'name': 'Abdullah', 'text': 'The Product is Good'},
        {'name': 'Kafi', 'text': 'The Product is Bad'},
      ]
    },{
      'id': 15,
      'title': 'Roll',
      'category': 'Food',
      'remark': 'Special',
      'image': 'assets/fp15a.jpeg',
      'price': '100',
      'rating': '4.3',
      'description': 'Frozen chicken roll',
      'images': [
        'assets/fp15a.jpeg',
        'assets/fp15b.jpeg',
        'assets/fp15a.jpeg',
        'assets/fp15b.jpeg'
      ],
      'review': [
        {'name': 'Abdullah', 'text': 'The Product is Good'},
        {'name': 'Kafi', 'text': 'The Product is Bad'},
      ]
    },{
      'id': 16,
      'title': 'Chicken',
      'category': 'Food',
      'remark': 'New',
      'image': 'assets/fp16a.jpeg',
      'price': '250',
      'rating': '4.9',
      'description': 'Bengal meat premium chicken',
      'images': [
        'assets/fp16a.jpeg',
        'assets/fp16b.jpeg',
        'assets/fp16a.jpeg',
        'assets/fp16b.jpeg'
      ],
      'review': [
        {'name': 'Abdullah', 'text': 'The Product is Good'},
        {'name': 'Kafi', 'text': 'The Product is Bad'},
      ]
    },{
      'id': 17,
      'title': 'Potato Chips',
      'category': 'Food',
      'remark': 'Popular',
      'image': 'assets/fp17a.jpeg',
      'price': '10',
      'rating': '4.9',
      'description': 'Fresh Potato chips',
      'images': [
        'assets/fp17a.jpeg',
        'assets/fp17b.jpeg',
        'assets/fp17a.jpeg',
        'assets/fp17b.jpeg'
      ],
      'review': [
        {'name': 'Abdullah', 'text': 'The Product is Good'},
        {'name': 'Kafi', 'text': 'The Product is Bad'},
      ]
    },{
      'id': 18,
      'title': 'Chocolate',
      'category': 'Food',
      'remark': 'Special',
      'image': 'assets/fp18a.jpeg',
      'price': '250',
      'rating': '4.9',
      'description': 'Dairy Milk Chocolate',
      'images': [
        'assets/fp18a.jpeg',
        'assets/fp18b.jpeg',
        'assets/fp18a.jpeg',
        'assets/fp18b.jpeg'
      ],
      'review': [
        {'name': 'Abdullah', 'text': 'The Product is Good'},
        {'name': 'Kafi', 'text': 'The Product is Bad'},
      ]
    },{
      'id': 19,
      'title': 'Mango Juice',
      'category': 'Food',
      'remark': 'Popular',
      'image': 'assets/fp19a.jpeg',
      'price': '50',
      'rating': '4.5',
      'description': 'fresh mango juice',
      'images': [
        'assets/fp19a.jpeg',
        'assets/fp19b.jpeg',
        'assets/fp19a.jpeg',
        'assets/fp19b.jpeg'
      ],
      'review': [
        {'name': 'Abdullah', 'text': 'The Product is Good'},
        {'name': 'Kafi', 'text': 'The Product is Bad'},
      ]
    },{
      'id': 20,
      'title': 'Ice cream',
      'category': 'Food',
      'remark': 'Popular',
      'image': 'assets/fp20a.jpeg',
      'price': '50',
      'rating': '4.9',
      'description': 'vanilla ice cream',
      'images': [
        'assets/fp20a.jpeg',
        'assets/fp20b.jpeg',
        'assets/fp20a.jpeg',
        'assets/fp20b.jpeg'
      ],
      'review': [
        {'name': 'Abdullah', 'text': 'The Product is Good'},
        {'name': 'Kafi', 'text': 'The Product is Bad'},
      ]
    },


    //koli's code

    {
      'id': 21,
      'title': 'Tshirt',
      'category': 'Fashion',
      'remark': 'Special',
      'image': 'assets/fap21a.jpg',
      'price': '800',
      'rating': '4.9',
      'description':
          'Hello friend that is popular Tshirt. Hello friend that is popular Tshirt. Hello friend that is popular Tshirt. Hello friend that is popular Tshirt. Hello friend that is popular Tshirt. Hello friend that is popular Tshirt. Hello friend that is popular Tshirt. Hello friend that is popular Tshirt. Hello friend that is popular Tshirt. Hello friend that is popular Tshirt. Hello friend that is popular Tshirt. ',
      'images': [
        'assets/fap21a.jpg',
        'assets/fap21b.jpg',
        'assets/fap21a.jpg',
        'assets/fap21b.jpg'
      ],
      'review': [
        {'name': 'Abir', 'text': 'The Product is very Good'},
        {'name': 'Afima', 'text': 'The Product is Bad'},
      ]
    },
    {
      'id': 22,
      'title': 'Saree',
      'category': 'Fashion',
      'remark': 'Popular',
      'image': 'assets/fap22a.jpg',
      'price': '500',
      'rating': '4.9',
      'description':
          'Hello friend that is popular saree. Hello friend that is popular saree. Hello friend that is popular saree. Hello friend that is popular saree. Hello friend that is popular saree. Hello friend that is popular saree. Hello friend that is popular saree. Hello friend that is popular saree. Hello friend that is popular saree. Hello friend that is popular saree. Hello friend that is popular saree. ',
      'images': [
        'assets/fap22a.jpg',
        'assets/fap22b.jpg',
        'assets/fap22a.jpg',
        'assets/fap22b.jpg'
      ],
      'review': [
        {'name': 'sumaiya', 'text': 'The Product is Good'},
        {'name': 'Kafi', 'text': 'The Product is Bad'},
      ]
    },
    {
      'id': 23,
      'title': 'Jins',
      'category': 'Fashion',
      'remark': 'New',
      'image': 'assets/fap23a.jpg',
      'price': '3500',
      'rating': '4.9',
      'description':
          'Hello friend that is new jins. Hello friend that is new jins. Hello friend that is new jins. Hello friend that is new jins. Hello friend that is new jins. Hello friend that is new jins. Hello friend that is new jins. Hello friend that is new jins. Hello friend that is new jins. Hello friend that is new jins. Hello friend that is new jins. Hello friend that is new jins. Hello friend that is new jins. ',
      'images': [
        'assets/fap23a.jpg',
        'assets/fap23b.jpg',
        'assets/fap23a.jpg',
        'assets/fap23b.jpg'
      ],
      'review': [
        {'name': 'Abdullah', 'text': 'The Product is Good'},
        {'name': 'jannat', 'text': 'The Product is Bad'},
      ]
    },
    {
      'id': 24,
      'title': 'Shirt',
      'category': 'Fashion',
      'remark': 'Special',
      'image': 'assets/fap24a.jpg',
      'price': '2500',
      'rating': '4.9',
      'description':
          'Hello friend that is tranding shirt. Hello friend that is tranding shirt. Hello friend that is tranding shirt. Hello friend that is tranding shirt. Hello friend that is tranding shirt. Hello friend that is tranding shirt. Hello friend that is tranding shirt. Hello friend that is tranding shirt. Hello friend that is tranding shirt. Hello friend that is tranding shirt. Hello friend that is tranding shirt. ',
      'images': [
        'assets/fap24a.jpg',
        'assets/fap24b.jpg',
        'assets/fap24a.jpg',
        'assets/fap24b.jpg'
      ],
      'review': [
        {'name': 'Ali', 'text': 'The Product is Good'},
        {'name': 'Kafi', 'text': 'The Product is Bad'},
      ]
    },
    {
      'id': 25,
      'title': 'Kurti',
      'category': 'Fashion',
      'remark': 'New',
      'image': 'assets/fap25a.jpg',
      'price': '1000',
      'rating': '4.9',
      'description':
          'Hello friend that is new kurti. Hello friend that is new kurti. Hello friend that is new kurti. Hello friend that is new kurti. Hello friend that is new kurti. Hello friend that is new kurti. Hello friend that is new kurti. Hello friend that is new kurti. Hello friend that is new kurti. Hello friend that is new kurti. Hello friend that is new kurti. Hello friend that is new kurti. ',
      'images': [
        'assets/fap25a.jpg',
        'assets/fap25b.jpg',
        'assets/fap25a.jpg',
        'assets/fap25b.jpg'
      ],
      'review': [
        {'name': 'suraiya', 'text': 'The Product is Good'},
        {'name': 'Mini', 'text': 'The Product is Bad'},
      ]
    },
    {
      'id': 26,
      'title': 'Shoes',
      'category': 'Fashion',
      'remark': 'Popular',
      'image': 'assets/fap26a.jpg',
      'price': '500',
      'rating': '4.9',
      'description':
          'Hello friend that is shoe popular shoes. Hello friend that is shoe popular shoes. Hello friend that is shoe popular shoes. Hello friend that is shoe popular shoes. Hello friend that is shoe popular shoes. Hello friend that is shoe popular shoes. Hello friend that is shoe popular shoes. Hello friend that is shoe popular shoes. Hello friend that is shoe popular shoes. Hello friend that is shoe popular shoes. Hello friend that is shoe popular shoes. ',
      'images': [
        'assets/fap26a.jpg',
        'assets/fap26b.jpg',
        'assets/fap26a.jpg',
        'assets/fap26b.jpg'
      ],
      'review': [
        {'name': 'Akib', 'text': 'The Product is Good'},
        {'name': 'priya', 'text': 'The Product is Bad'},
      ]
    },
    {
      'id': 27,
      'title': 'Sunglass',
      'category': 'Fashion',
      'remark': 'Popular',
      'image': 'assets/fap27a.jpg',
      'price': '500',
      'rating': '4.9',
      'description':
          'Hello friend that is popular sunglass. Hello friend that is popular sunglass. Hello friend that is popular sunglass. Hello friend that is popular sunglass. Hello friend that is popular sunglass. Hello friend that is popular sunglass. Hello friend that is popular sunglass. Hello friend that is popular sunglass. Hello friend that is popular sunglass. Hello friend that is popular sunglass. Hello friend that is popular sunglass. ',
      'images': [
        'assets/fap27a.jpg',
        'assets/fap27b.jpg',
        'assets/fap27a.jpg',
        'assets/fap27b.jpg'
      ],
      'review': [
        {'name': 'Wasib', 'text': 'The Product is Good'},
        {'name': 'Kafi', 'text': 'The Product is Bad'},
      ]
    },
    {
      'id': 28,
      'title': 'Earing',
      'category': 'Fashion',
      'remark': 'New',
      'image': 'assets/fap28a.jpg',
      'price': '500',
      'rating': '4.9',
      'description':
          'Hello friend that is new earing. Hello friend that is new earing. Hello friend that is new earing. Hello friend that is new earing. Hello friend that is new earing. Hello friend that is new earing. Hello friend that is new earing. Hello friend that is new earing. Hello friend that is new earing. Hello friend that is new earing. Hello friend that is new earing. ',
      'images': [
        'assets/fap28a.jpg',
        'assets/fap28b.jpg',
        'assets/fap28a.jpg',
        'assets/fap28b.jpg'
      ],
      'review': [
        {'name': 'Sohel', 'text': 'The Product is Good'},
        {'name': 'Jubeida', 'text': 'The Product is Bad'},
      ]
    },
    {
      'id': 29,
      'title': 'Perfume',
      'category': 'Fashion',
      'remark': 'Popular',
      'image': 'assets/fap29a.jpg',
      'price': '500',
      'rating': '4.9',
      'description':
          'Hello friend that is new perfume. Hello friend that is new perfume. Hello friend that is new perfume. Hello friend that is new perfume. Hello friend that is new perfume. Hello friend that is new perfume. Hello friend that is new perfume. Hello friend that is new perfume. Hello friend that is new perfume. Hello friend that is new perfume. ',
      'images': [
        'assets/fap29a.jpg',
        'assets/fap29b.jpg',
        'assets/fap29a.jpg',
        'assets/fap29b.jpg'
      ],
      'review': [
        {'name': 'Abdullah', 'text': 'The Product is Good'},
        {'name': 'Kafi', 'text': 'The Product is Bad'},
      ]
    },
    {
      'id': 30,
      'title': 'Watch',
      'category': 'Fashion',
      'remark': 'Popular',
      'image': 'assets/fap30a.jpg',
      'price': '900',
      'rating': '4.9',
      'description':
          'Hello friend that is popular watch. Hello friend that is popular watch. Hello friend that is popular watch. Hello friend that is popular watch. Hello friend that is popular watch. Hello friend that is popular watch. Hello friend that is popular watch. Hello friend that is popular watch. Hello friend that is popular watch. Hello friend that is popular watch. Hello friend that is popular watch. Hello friend that is popular watch. Hello friend that is popular watch. ',
      'images': [
        'assets/fap30a.jpg',
        'assets/fap30b.jpg',
        'assets/fap30a.jpg',
        'assets/fap30b.jpg'
      ],
      'review': [
        {'name': 'Asif', 'text': 'The Product is Good'},
        {'name': 'Dihan', 'text': 'The Product is Bad'},
      ]
    },

    // Furniture

    {
      'id': 31,
      'title': 'Bed',
      'category': 'Furniture',
      'remark': 'Popular',
      'image': 'assets/fap31a.jpg',
      'price': '80000',
      'rating': '4.9',
      'description': 'Hello friend that is popular Bed',
      'images': [
        'assets/fap31a.jpg',
        'assets/fap31b.jpg',
        'assets/fap31a.jpg',
        'assets/fap31b.jpg'
      ],
      'review': [
        {'name': 'Abir', 'text': 'The Product is very Good'},
        {'name': 'Afima', 'text': 'The Product is Bad'},
      ]
    },
    {
      'id': 32,
      'title': 'Sofa',
      'category': 'Furniture',
      'remark': 'Popular',
      'image': 'assets/fap32a.jpg',
      'price': '50000',
      'rating': '4.9',
      'description': 'Hello friend that is popular sofa',
      'images': [
        'assets/fap32a.jpg',
        'assets/fap32b.jpg',
        'assets/fap32a.jpg',
        'assets/fap32b.jpg'
      ],
      'review': [
        {'name': 'sumaiya', 'text': 'The Product is Good'},
        {'name': 'Kafi', 'text': 'The Product is Bad'},
      ]
    },
    {
      'id': 33,
      'title': 'Almira',
      'category': 'Furniture',
      'remark': 'New',
      'image': 'assets/fap33a.jpg',
      'price': '35000',
      'rating': '4.9',
      'description': 'Hello friend that is new Almira',
      'images': [
        'assets/fap33a.jpg',
        'assets/fap33b.jpg',
        'assets/fap33a.jpg',
        'assets/fap33b.jpg'
      ],
      'review': [
        {'name': 'Abdullah', 'text': 'The Product is Good'},
        {'name': 'jannat', 'text': 'The Product is Bad'},
      ]
    },
    {
      'id': 34,
      'title': 'Dining Table',
      'category': 'Furniture',
      'remark': 'Tranding',
      'image': 'assets/fap34a.jpg',
      'price': '25000',
      'rating': '4.9',
      'description': 'Hello friend that is Dining table',
      'images': [
        'assets/fap34a.jpg',
        'assets/fap34b.jpg',
        'assets/fap34a.jpg',
        'assets/fap34b.jpg'
      ],
      'review': [
        {'name': 'Ali', 'text': 'The Product is Good'},
        {'name': 'Kafi', 'text': 'The Product is Bad'},
      ]
    },
    {
      'id': 35,
      'title': 'Reading Table',
      'category': 'Furniture',
      'remark': 'New',
      'image': 'assets/fap35a.jpg',
      'price': '3000',
      'rating': '4.9',
      'description': 'Hello friend that is new Reading table',
      'images': [
        'assets/fap35a.jpg',
        'assets/fap35b.jpg',
        'assets/fap35a.jpg',
        'assets/fap35b.jpg'
      ],
      'review': [
        {'name': 'suraiya', 'text': 'The Product is Good'},
        {'name': 'Mini', 'text': 'The Product is Bad'},
      ]
    },
    {
      'id': 36,
      'title': 'Chair',
      'category': 'Furniture',
      'remark': 'Popular',
      'image': 'assets/fap36a.jpg',
      'price': '500',
      'rating': '4.9',
      'description': 'Hello friend that is shoe popular chair',
      'images': [
        'assets/fap36a.jpg',
        'assets/fap36b.jpg',
        'assets/fap36a.jpg',
        'assets/fap36b.jpg'
      ],
      'review': [
        {'name': 'Akib', 'text': 'The Product is Good'},
        {'name': 'priya', 'text': 'The Product is Bad'},
      ]
    },
    {
      'id': 37,
      'title': 'Dressing Table',
      'category': 'Furniture',
      'remark': 'Popular',
      'image': 'assets/fap37a.jpg',
      'price': '7000',
      'rating': '4.9',
      'description': 'Hello friend that is popular Dressing table',
      'images': [
        'assets/fap37a.jpg',
        'assets/fap37b.jpg',
        'assets/fap37a.jpg',
        'assets/fap37b.jpg'
      ],
      'review': [
        {'name': 'Wasib', 'text': 'The Product is Good'},
        {'name': 'Kafi', 'text': 'The Product is Bad'},
      ]
    },
    {
      'id': 38,
      'title': 'Tea Table',
      'category': 'Furniture',
      'remark': 'New',
      'image': 'assets/fap38a.jpg',
      'price': '5000',
      'rating': '4.9',
      'description': 'Hello friend that is new Tea table',
      'images': [
        'assets/fap38a.jpg',
        'assets/fap38b.jpg',
        'assets/fap38a.jpg',
        'assets/fap38b.jpg'
      ],
      'review': [
        {'name': 'Sohel', 'text': 'The Product is Good'},
        {'name': 'Jubeida', 'text': 'The Product is Bad'},
      ]
    },
    {
      'id': 39,
      'title': 'Lamp',
      'category': 'Furniture',
      'remark': 'Popular',
      'image': 'assets/fap39a.jpg',
      'price': '500',
      'rating': '4.9',
      'description': 'Hello friend that is new lamp',
      'images': [
        'assets/fap39a.jpg',
        'assets/fap39b.jpg',
        'assets/fap39a.jpg',
        'assets/fap39b.jpg'
      ],
      'review': [
        {'name': 'Abdullah', 'text': 'The Product is Good'},
        {'name': 'Kafi', 'text': 'The Product is Bad'},
      ]
    },
    {
      'id':40,
      'title': 'Shoe Stand',
      'category': 'Furniture',
      'remark': 'Popular',
      'image': 'assets/fap40a.jpg',
      'price': '900',
      'rating': '4.9',
      'description': 'Hello friend that is popular Shoe stand',
      'images': [
        'assets/fap40a.jpg',
        'assets/fap40b.jpg',
        'assets/fap40a.jpg',
        'assets/fap40b.jpg'
      ],
      'review': [
        {'name': 'Asif', 'text': 'The Product is Good'},
        {'name': 'Dihan', 'text': 'The Product is Bad'},
      ]

    },


  ];

  List<dynamic> carts = [];
  List<dynamic> wishList = [];

  List<int> cartQuantity = [];

  int _totalPrice = 0;

  int get getTotalPrice => _totalPrice;

  void setCartQuantity() {
    cartQuantity = List<int>.filled(50, 1);
    // for(int i =0;i<50; i++)
    //   {
    //     cartQuantity[i] = 1;
    //   }
    update();
  }

  void addCartQ(int index) {
    if (cartQuantity[index] < 10) {
      cartQuantity[index] += 1;
    }
    update();
  }

  void subCartQ(int index) {
    if (cartQuantity[index] > 1) {
      cartQuantity[index] -= 1;
    }
    update();
  }

  void calculateTotalPrice() {
    _totalPrice = 0;
    for (int i = 0; i < carts.length; i++) {
      print(
          'cartQuantity[i]cartQuantity[i]cartQuantity[i]cartQuantity[i]cartQuantity[i]');
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
