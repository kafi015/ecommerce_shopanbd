import 'package:ecommerce_shopanbd/new/products.dart';
import 'package:ecommerce_shopanbd/ui/utils/text_style.dart';
import 'package:ecommerce_shopanbd/ui/widgets/appbar_back_button.dart';
import 'package:ecommerce_shopanbd/ui/widgets/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateReviewScreen extends StatefulWidget {
  const CreateReviewScreen({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  State<CreateReviewScreen> createState() => _CreateReviewScreenState();
}

class _CreateReviewScreenState extends State<CreateReviewScreen> {
  TextEditingController firstNameETController = TextEditingController();
  TextEditingController lastNameETController = TextEditingController();
  TextEditingController reviewETController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBarBackButtton(),
        title: Text(
          'Create Review',
          style: titleTextStyle,
        ),
      ),
      body: GetBuilder<Products>(builder: (productController) {
        return SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 100),
              TextFormFieldApp(
                  controller: firstNameETController,
                  hintText: 'First Name',
                  textInputType: TextInputType.name),
              const SizedBox(height: 20),
              TextFormFieldApp(
                  controller: lastNameETController,
                  hintText: 'Last Name',
                  textInputType: TextInputType.name),
              const SizedBox(height: 20),
              TextFormFieldApp(
                  controller: reviewETController,
                  hintText: 'Write Review',
                  maxLine: 10,
                  textInputType: TextInputType.name),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (firstNameETController.text != '' &&
                          reviewETController.text != '') {
                        productController.products[widget.index]['review'].add(
                          {
                            'name' : '${firstNameETController.text} ${lastNameETController.text}',
                            'text' : reviewETController.text,
                          }
                        );
                        productController.updateProducts();
                        Navigator.pop(context);

                      } else {
                        Get.snackbar(
                          'Write something for submit review',
                          '',
                          snackPosition: SnackPosition.BOTTOM,

                        );
                      }
                    },
                    child: const Text('Submit'),
                  ),
                ),
              )
            ],
          ),
        );
      }),
    );
  }
}
