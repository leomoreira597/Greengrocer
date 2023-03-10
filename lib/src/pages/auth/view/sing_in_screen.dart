import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:greengrocer/src/pages/auth/controller/auth_controller.dart';
import 'package:greengrocer/src/pages/auth/widget/custom_divider.dart';
import 'package:greengrocer/src/pages/auth/widget/slide_category_title.dart';
import 'package:greengrocer/src/widgets/custom_text_field.dart';
import '../../../config/custom_colors.dart';
import '../../../constants/consts_app.dart';
import '../../../services/validators.dart';

class SingInScreen extends StatelessWidget {
  SingInScreen({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final AuthController authController = Get.put(AuthController());

    return Scaffold(
      backgroundColor: CustomColors.customSwatchColor,
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text.rich(
                      TextSpan(
                          style: const TextStyle(
                            fontSize: 40,
                          ),
                          children: [
                            const TextSpan(
                              text: 'Green',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: 'grocer',
                              style: TextStyle(
                                color: CustomColors.customContrastColor,
                              ),
                            ),
                          ]),
                    ),
                    const SlideCategoryTitle()
                  ],
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 40),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(45),
                  ),
                ),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      CustomTextField(
                        controller: emailController,
                        label: "Email",
                        icon: Icons.email,
                        validator: emailValidator,
                      ),
                      CustomTextField(
                        controller: passwordController,
                        label: "Senha",
                        icon: Icons.password,
                        isSecret: true,
                        validator: passwordValidator,
                      ),
                      Obx(() => SizedBox(
                          height: 50,
                          child: ElevatedButton(
                            onPressed: authController.isLoading.value
                                ? null
                                : () {
                              if (_formKey.currentState!.validate()) {
                                String email = emailController.text;
                                String password =
                                    passwordController.text;
                                authController.singIn(
                                    email: email, password: password);
                              } else {
                                print("Campos n??o validos");
                              }
                              //Get.offNamed(ConstRoutes.baseRoute);
                            },
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18),
                              ),
                            ),
                            child: authController.isLoading.value
                                ? const CircularProgressIndicator()
                                : const Text(
                              "Entrar",
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Esqueceu a senha?',
                            style: TextStyle(
                              color: CustomColors.customContrastColor,
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: CustomDivider(),
                      ),
                      SizedBox(
                        height: 50,
                        child: OutlinedButton(
                          onPressed: () {
                            Get.toNamed(ConstRoutes.signUpRoute);
                          },
                          style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18),
                              ),
                              side: const BorderSide(
                                width: 2,
                                color: Colors.green,
                              )),
                          child: const Text(
                            'Criar Conta',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
