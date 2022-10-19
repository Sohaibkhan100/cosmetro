import 'package:cosmetro/constants/color_conatants.dart';
import 'package:cosmetro/constants/text_constants.dart';
import 'package:cosmetro/pages/home.dart';
import 'package:cosmetro/pages/signup.dart';
import 'package:cosmetro/widgets/widgets.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

final emailController = TextEditingController();
final passwordController = TextEditingController();
String email = 'sohaibkhan@cosmetro.com';

String password = 'khan123';

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Color(ColorConstants.baseColor),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_back,
                            color: Color(ColorConstants.iconColor_white),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  Center(
                    child: Text(
                      TextConstants.loginText,
                      style: mystyle.copyWith(
                          fontSize: 35,
                          color: Color(ColorConstants.iconColor_white)),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Center(
                    child: Text(
                      TextConstants.logintag,
                      style: mystyle.copyWith(
                          fontSize: 18,
                          color: Color(ColorConstants.iconColor_white)),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.2,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: TextField(
                      controller: emailController,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        filled: true,
                        prefixIcon: Icon(Icons.email,
                            color: Color(ColorConstants.iconColor_black)),
                        fillColor: Color(ColorConstants.iconColor_white),
                        hintText: 'Enter Email',
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(36)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: TextField(
                      controller: passwordController,
                      obscureText: true,
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock,
                            color: Color(ColorConstants.iconColor_black)),
                        filled: true,
                        fillColor: Color(ColorConstants.iconColor_white),
                        hintText: 'Enter Password',
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(36)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  Container(
                      height: 50,
                      width: 120,
                      decoration: mydecoration,
                      child: TextButton(
                        onPressed: () {
                          if (emailController.text == email &&
                              passwordController.text == password) {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()),
                            );
                          } else {
                            final snackbar1 = SnackBar(
                                content: Text('Incorrect Email or Password'));
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackbar1);
                          }
                        },
                        child: Center(
                          child: Text(TextConstants.loginText,
                              style: mystyle.copyWith(
                                  fontSize: 18,
                                  color:
                                      Color(ColorConstants.iconColor_white))),
                        ),
                      )),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(TextConstants.no_account,
                          style: mystyle.copyWith(
                              fontSize: 18,
                              color: Color(ColorConstants.iconColor_white))),
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUpPage()),
                          );
                        },
                        child: Text(
                          TextConstants.SignupText,
                          style: mystyle.copyWith(
                              fontSize: 18,
                              color: Color(ColorConstants.iconColor_white)),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )));
  }
}
