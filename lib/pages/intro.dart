import 'package:cosmetro/constants/color_conatants.dart';
import 'package:cosmetro/constants/text_constants.dart';
import 'package:cosmetro/pages/loginpage.dart';
import 'package:cosmetro/pages/signup.dart';
import 'package:cosmetro/widgets/widgets.dart';
import 'package:flutter/material.dart';

class IntoPage extends StatefulWidget {
  const IntoPage({Key? key}) : super(key: key);

  @override
  State<IntoPage> createState() => _SignUpState();
}

class _SignUpState extends State<IntoPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Color(ColorConstants.baseColor),
            body: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                Center(
                  child: Container(
                    height: 300,
                    width: 300,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('asset/images/logo1.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()),
                      );
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: MediaQuery.of(context).size.height * 0.1,
                      decoration: gradientborder,
                      child: Center(
                        child: Text(
                          TextConstants.loginText,
                          style: mystyle.copyWith(
                              color: Color(ColorConstants.iconColor_white)),
                        ),
                      ),
                    )),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignUpPage()),
                    );
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width * 0.8,
                    decoration: mydecoration,
                    child: Center(
                      child: Text(TextConstants.SignupText,
                          style: mystyle.copyWith(
                              color: Color(ColorConstants.iconColor_white))),
                    ),
                  ),
                )
              ],
            )));
  }
}
