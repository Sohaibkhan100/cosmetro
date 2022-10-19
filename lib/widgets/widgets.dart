import 'package:cosmetro/constants/color_conatants.dart';
import 'package:cosmetro/pages/intro.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const IntoPage()),
            );
          },
          icon: Icon(
            Icons.account_circle,
            size: 30,
            color: Color(ColorConstants.iconColor_white),
          ),
        ),
        Icon(
          Icons.favorite,
          size: 30,
          color: Color(ColorConstants.iconColor_white),
        ),
      ],
    );
  }
}

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      height: MediaQuery.of(context).size.height * 0.10,
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(ColorConstants.gradient2),
              Color(ColorConstants.gradient1),
            ],
          ),
          borderRadius: BorderRadius.circular(36)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            Icons.favorite,
            size: 30,
            color: Color(ColorConstants.iconColor_white),
          ),
          Icon(
            Icons.shopping_cart,
            size: 30,
            color: Color(ColorConstants.iconColor_white),
          ),
        ],
      ),
    );
  }
}

final mystyle = TextStyle(
  fontFamily: 'Lexend',
  fontSize: 20,
  fontWeight: FontWeight.bold,
  color: Color(0xFF9E9E9E),
);
final mydecoration = BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [Color(ColorConstants.gradient2), Color(ColorConstants.gradient1)],
  ),
  borderRadius: BorderRadius.circular(36),
);

final gradientborder = BoxDecoration(
    borderRadius: BorderRadius.circular(36),
    border: GradientBoxBorder(
      gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          Color(ColorConstants.gradient2),
          Color(ColorConstants.gradient1)
        ],
      ),
      width: 3,
    ));

final feilddecoration = InputDecoration(
  prefixIcon: Icon(Icons.lock, color: Color(ColorConstants.iconColor_black)),
  filled: true,
  fillColor: Color(ColorConstants.iconColor_white),
  hintText: 'Enter Password',
  border: OutlineInputBorder(
      borderSide: BorderSide.none, borderRadius: BorderRadius.circular(36)),
);
