import 'package:cosmetro/constants/color_conatants.dart';
import 'package:cosmetro/constants/text_constants.dart';
import 'package:cosmetro/pages/loginpage.dart';
import 'package:cosmetro/widgets/widgets.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

final emailController = TextEditingController();
final passwordController = TextEditingController();
final userController = TextEditingController();
final confirmController = TextEditingController();

class _SignUpPageState extends State<SignUpPage> {
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
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()),
                            );
                          },
                          icon: Icon(
                            Icons.arrow_back,
                            color: Color(ColorConstants.iconColor_white),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Center(
                    child: Text(
                      TextConstants.SignupText,
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
                      TextConstants.signuptag,
                      style: mystyle.copyWith(
                          fontSize: 18,
                          color: Color(ColorConstants.iconColor_white)),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: TextField(
                      controller: userController,
                      textInputAction: TextInputAction.next,
                      decoration: feilddecoration.copyWith(
                          hintText: 'Enter Username',
                          prefixIcon: Icon(
                            Icons.account_box,
                            color: Color(ColorConstants.iconColor_black),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: TextField(
                      controller: emailController,
                      textInputAction: TextInputAction.next,
                      decoration: feilddecoration.copyWith(
                          hintText: 'Enter Email',
                          prefixIcon: Icon(
                            Icons.email,
                            color: Color(ColorConstants.iconColor_black),
                          )),
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
                      textInputAction: TextInputAction.next,
                      decoration: feilddecoration,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: TextField(
                      controller: confirmController,
                      obscureText: true,
                      textInputAction: TextInputAction.done,
                      decoration: feilddecoration.copyWith(
                          hintText: 'Confirm Password'),
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
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()),
                          );
                        },
                        child: Center(
                          child: Text(TextConstants.SignupText,
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
                      Text(TextConstants.yes_accout,
                          style: mystyle.copyWith(
                              fontSize: 18,
                              color: Color(ColorConstants.iconColor_white))),
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginPage()),
                          );
                        },
                        child: Text(
                          TextConstants.loginText,
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
