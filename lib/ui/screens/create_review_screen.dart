import 'package:ecommerce_shopanbd/ui/utils/text_style.dart';
import 'package:ecommerce_shopanbd/ui/widgets/appbar_back_button.dart';
import 'package:ecommerce_shopanbd/ui/widgets/text_form_field.dart';
import 'package:flutter/material.dart';

class CreateReviewScreen extends StatefulWidget {
  const CreateReviewScreen({Key? key}) : super(key: key);

  @override
  State<CreateReviewScreen> createState() => _CreateReviewScreenState();
}

class _CreateReviewScreenState extends State<CreateReviewScreen> {
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 100),
            TextFormFieldApp(
                controller: TextEditingController(),
                hintText: 'First Name',
                textInputType: TextInputType.name),
            const SizedBox(height: 20),
            TextFormFieldApp(
                controller: TextEditingController(),
                hintText: 'Last Name',
                textInputType: TextInputType.name),
            const SizedBox(height: 20),
            TextFormFieldApp(
                controller: TextEditingController(),
                hintText: 'Write Review',
                maxLine: 10,
                textInputType: TextInputType.name),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Submit'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
