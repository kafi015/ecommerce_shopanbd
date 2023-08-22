import 'package:ecommerce_shopanbd/data/models/read_profile_model.dart';
import 'package:ecommerce_shopanbd/ui/state_managers/complete_profile_controller.dart';
import 'package:ecommerce_shopanbd/ui/widgets/appbar_back_button.dart';
import 'package:ecommerce_shopanbd/ui/widgets/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/app_colors.dart';
import '../../widgets/elevated_button.dart';
import '../../widgets/title_text.dart';

class CompleteProfileScreen extends StatefulWidget {
  const CompleteProfileScreen({Key? key}) : super(key: key);

  @override
  State<CompleteProfileScreen> createState() => _CompleteProfileScreenState();
}

class _CompleteProfileScreenState extends State<CompleteProfileScreen> {
  final TextEditingController _firstNameETController = TextEditingController();
  final TextEditingController _lastNameETController = TextEditingController();
  final TextEditingController _mobileETController = TextEditingController();
  final TextEditingController _cityETController = TextEditingController();
  final TextEditingController _shippingAddressETController =
      TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Get.find<CompleteProfileController>().getProfileData();

  }

  @override
  Widget build(BuildContext context) {
    _firstNameETController.text = Get.find<CompleteProfileController>().getreadProfileModel.data![0].firstName ?? '';
    _lastNameETController.text = Get.find<CompleteProfileController>().getreadProfileModel.data![0].lastName ?? '';
    _mobileETController.text = Get.find<CompleteProfileController>().getreadProfileModel.data![0].mobile ?? '';
    _cityETController.text = Get.find<CompleteProfileController>().getreadProfileModel.data![0].city ?? '';
    _shippingAddressETController.text = Get.find<CompleteProfileController>().getreadProfileModel.data![0].shippingAddress ?? '';
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: const AppBarBackButtton(),
          title: const TitleText(
            text: "Complete Profile",
          ),
        ),
        body: GetBuilder<CompleteProfileController>(
            builder: (completeProfileController) {
          return Center(
            child: completeProfileController.getProfileDataInProgress
                ? const Center(
                    child: CircularProgressIndicator(
                      color: primaryColor,
                    ),
                  )
                : SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Image.asset(
                          'assets/App_Logo.jpg',
                          width: 150,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'Get Started with us with your details',
                          style: TextStyle(
                            fontSize: 18,
                            color: greyColor,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormFieldApp(
                            controller: _firstNameETController,
                            hintText: 'First Name',
                            textInputType: TextInputType.name),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormFieldApp(
                            controller: _lastNameETController,
                            hintText: 'Last Name',
                            textInputType: TextInputType.name),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormFieldApp(
                            controller: _mobileETController,
                            hintText: 'Mobile',
                            textInputType: TextInputType.phone),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormFieldApp(
                            controller: _cityETController,
                            hintText: 'City',
                            textInputType: TextInputType.text),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormFieldApp(
                            controller: _shippingAddressETController,
                            hintText: 'Shipping Address',
                            textInputType: TextInputType.text),
                        const SizedBox(
                          height: 20,
                        ),
                        ElevatedButtonApp(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          title: 'Complete',
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
          );
        }),
      ),
    );
  }
}
