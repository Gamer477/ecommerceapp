import 'package:ecommerce_app/core/view_model/auth_view_model.dart';
import 'package:ecommerce_app/view/auth/register_view.dart';
import 'package:ecommerce_app/view/widgets/custom_buttom.dart';
import 'package:ecommerce_app/view/widgets/custom_button_social.dart';
import 'package:ecommerce_app/view/widgets/custom_text.dart';
import 'package:ecommerce_app/view/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constance.dart';

class LoginView extends GetWidget<AuthViewModel> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),

      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   elevation: 0.0,
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 10,
            right: 10,
            bottom: 20,
            left: 10,
          ),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Container(
                  width: 113,
                  height: 114,
                  child: Image.asset(
                    'assets/images/logo.png',
                    fit: BoxFit.contain,
                  ),
                ),
                Card(
                  color: Color(0xFFFFFFFF),
                  child: Container(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                              fontWeight: FontWeight.bold,
                              text: "Welcome,",
                              fontSize: 30,
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.to(RegisterView());
                              },
                              child: CustomText(
                                text: "Sign Up",
                                color: primaryColor,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        CustomText(
                          text: 'Sign in to Continue',
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        CustomTextFormField(
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
                          height: 20,
                        ),
                        CustomText(
                          text: 'Forgot Password?',
                          fontSize: 14,
                          alignment: Alignment.topRight,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        CustomButton(
                          onPress: () {
                            _formKey.currentState.save();

                            if (_formKey.currentState.validate()) {
                              controller.signInWithEmailAndPassword();
                            }
                          },
                          text: 'SIGN IN',
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                CustomText(
                  fontSize: 18,
                  text: '-OR-',
                  alignment: Alignment.center,
                ),
                SizedBox(
                  height: 30,
                ),
                CustomButtonSocial(
                  text: 'Sign In with Facebook',
                  onPress: () {
                    controller.facebookSignInMethod();
                  },
                  imageName: 'assets/images/facebook.png',
                ),
                SizedBox(
                  height: 20,
                ),
                CustomButtonSocial(
                  text: 'Sign In with Google',
                  onPress: () {
                    controller.googleSignInMethod();
                  },
                  imageName: 'assets/images/google.png',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
