import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:rockets/constants.dart';
import 'package:rockets/Core/utils/app_router.dart';
import 'package:rockets/features/login/presentation/views/widgets/custom_social_button_login.dart';
import 'package:rockets/features/login/presentation/views/widgets/custom_text_button.dart';
import 'package:rockets/features/login/presentation/views/widgets/custom_text_field.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Center(
          child: SingleChildScrollView(
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    width: 165,
                    'assets/images/rocket.png',
                  ),
                  const SizedBox(height: 35),
                  const Text(
                    'تسجيل الدخول',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 30),
                  const CustomTextField(
                    hintText: 'البريد الإلكتروني',
                    icon: Icons.email,
                  ),
                  const SizedBox(height: 20),
                  const CustomTextField(
                    hintText: 'كلمة المرور',
                    icon: Icons.lock,
                  ),
                  const SizedBox(height: 20),
                  const CustomTextButton(
                    text: 'تسجيل الدخول',
                    color: kPrimaryColor,
                  ),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {},
                    child: const Text('نسيت كلمة المرور؟'),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          GoRouter.of(context).push(
                            AppRouter.kRegisterView,
                          );
                        },
                        child: const Text(
                          'انشاء حساب جديد ',
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Text(
                        'ليس لديك حساب؟ ',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Divider(
                          indent: 20.0,
                          endIndent: 30.0,
                          thickness: 1,
                        ),
                      ),
                      Text(
                        'أو',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          indent: 30.0,
                          endIndent: 20.0,
                          thickness: 1,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Directionality(
                    textDirection: TextDirection.ltr,
                    child: CustomSocialButtonLogin(
                      title: 'الدخول بواسطة فيسبوك ',
                      icon: FontAwesomeIcons.facebook,
                      buttonColor: kFcebookColor,
                      iconColor: kFcebookColor,
                      textColor: kFcebookColor,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Directionality(
                    textDirection: TextDirection.ltr,
                    child: CustomSocialButtonLogin(
                      title: 'الدخول بواسطة جوجل ',
                      icon: FontAwesomeIcons.google,
                      buttonColor: kGoogleColor,
                      iconColor: kGoogleColor,
                      textColor: kGoogleColor,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                    onTap: () {
                      GoRouter.of(context).go(
                        AppRouter.kHomeView,
                      );
                    },
                    child: const Text(
                      'التسجيل لاحقا',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
