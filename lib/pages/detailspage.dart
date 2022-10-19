import 'package:cosmetro/constants/color_conatants.dart';
import 'package:cosmetro/pages/home.dart';
import 'package:cosmetro/widgets/widgets.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  String? image;
  String? name;
  String? brand;
  String? description;
  String? price;
  double? rating;

  DetailPage(
      {this.image,
      this.name,
      this.brand,
      this.description,
      this.price,
      this.rating,
      Key? key})
      : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool isfavourite = false;

  void favourite() {
    setState(() {
      if (isfavourite) {
        isfavourite = false;
      } else {
        isfavourite = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(color: Color(ColorConstants.iconColor_white)),
        child: Stack(
          children: [
            Positioned(
                child: IconButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    },
                    icon: Icon(Icons.arrow_back,
                        color: Color(ColorConstants.iconColor_black))),
                top: 10),
            Positioned(
              child: Image(
                  image: NetworkImage(
                '${widget.image}',
              )),
              top: 0,
              right: 50,
              left: 50,
            ),
            Positioned(
              child: Container(
                height: 80,
                width: 50,
                decoration: BoxDecoration(
                  color: Color(ColorConstants.Color_grey),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(36),
                    bottomLeft: Radius.circular(36),
                  ),
                ),
                child: IconButton(
                    icon: (isfavourite
                        ? Icon(Icons.favorite)
                        : Icon(Icons.favorite_border)),
                    color: Color(ColorConstants.gradient2),
                    onPressed: () {
                      favourite();
                    }),
              ),
              top: 0,
              right: 30,
            ),
            Positioned(
              height: 40,
              width: 70,
              child: Container(
                decoration: mydecoration,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '${widget.rating}',
                      style: mystyle.copyWith(
                          color: Color(ColorConstants.iconColor_white)),
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    )
                  ],
                ),
              ),
              top: 250,
              left: 10,
            ),
            Positioned(
              child: Text(
                '${widget.name}',
                style: mystyle.copyWith(
                    fontSize: 25, color: Color(ColorConstants.baseColor)),
              ),
              top: 300,
              left: 10,
              right: 10,
            ),
            Positioned(
              child: Text(
                '${widget.brand}',
                style: mystyle.copyWith(
                    fontSize: 20, color: Color(ColorConstants.baseColor)),
              ),
              top: 400,
              left: 10,
              right: 10,
            ),
            Positioned(
              child: Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        '${widget.description}',
                        style: mystyle.copyWith(
                            fontSize: 15,
                            color: Color(ColorConstants.Color_grey),
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ),
              ),
              top: 450,
              left: 10,
              right: 10,
            ),
            Positioned(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 80,
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Center(
                        child: Wrap(
                          children: [
                            Text("${widget.price}",
                                style: mystyle.copyWith(
                                    color: Color(ColorConstants.baseColor),
                                    fontSize: 25)),
                            Text(
                              '\$',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 80,
                      width: MediaQuery.of(context).size.width * 0.5,
                      decoration: mydecoration.copyWith(
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(36)),
                      ),
                      child: IconButton(
                          onPressed: () {
                            final snackbar =
                                SnackBar(content: Text('Added To Cart'));
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackbar);
                          },
                          icon: Icon(
                            Icons.shopping_cart_outlined,
                            size: 40,
                            color: Color(
                              ColorConstants.iconColor_white,
                            ),
                          )),
                    ),
                  ]),
              bottom: 0,
            )
          ],
        ),
      ),
    ));
  }
}
