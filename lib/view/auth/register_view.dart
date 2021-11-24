import 'package:ecommerce_app/core/view_model/auth_view_model.dart';
import 'package:ecommerce_app/view/auth/login_view.dart';
import 'package:ecommerce_app/view/widgets/custom_buttom.dart';
import 'package:ecommerce_app/view/widgets/custom_text.dart';
import 'package:ecommerce_app/view/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterView extends GetWidget<AuthViewModel> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   elevation: 0.0,
      //   leading: GestureDetector(
      //     onTap: () {
      //       Get.off(LoginView());
      //     },
      //     child: Padding(
      //       padding: const EdgeInsets.only(top: 20.0, left: 5),
      //       child: Icon(
      //         Icons.arrow_back_ios,
      //         color: Colors.black,
      //         size: 20,
      //       ),
      //     ),
      //   ),
      // ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: GestureDetector(
                      onTap: () {
                        Get.off(LoginView());
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20.0, left: 5),
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 113,
                    height: 114,
                    child: Image.asset(
                      'assets/images/logo.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 50.0),
                    child: SizedBox(),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 20,
                  left: 20,
                ),
                child: Form(
                  key: _formKey,
                  child: Card(
                    elevation: 15,
                    color: Color(0xFFFFFFFF),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          CustomText(
                            text: "Sign Up,",
                            fontWeight: FontWeight.w500,
                            fontSize: 30,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          CustomTextFormField(
                            text: 'Name',
                            hint: 'AhmedAbbas',
                            hintsize: 18,
                            onSave: (value) {
                              controller.name = value;
                            },
                            validator: (value) {
                              if (value == null) {
                                print("ERROR");
                              }
                            },
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          CustomTextFormField(
                            hintsize: 18,
                            text: 'Email',
                            hint: 'ahmedonline75@gmail.com',
                            onSave: (value) {
                              controller.email = value;
                            },
                            validator: (value) {
                              if (value == null) {
                                print("ERROR");
                              }
                            },
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          CustomTextFormField(
                            text: 'Password',
                            hint: '• • • • • • • •',
                            hintsize: 30,
                            onSave: (value) {
                              controller.password = value;
                            },
                            validator: (value) {
                              if (value == null) {
                                print('error');
                              }
                            },
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          CustomButton(
                            onPress: () {
                              _formKey.currentState.save();

                              if (_formKey.currentState.validate()) {
                                controller.createAccountWithEmailAndPassword();
                              }
                            },
                            text: 'SIGN UP',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
