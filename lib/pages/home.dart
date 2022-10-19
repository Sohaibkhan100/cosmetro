import 'package:cosmetro/constants/color_conatants.dart';
import 'package:cosmetro/constants/text_constants.dart';
import 'package:cosmetro/pages/detailspage.dart';
import 'package:cosmetro/service/service.dart';
import 'package:cosmetro/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../cart_controller/cartcontroller.dart';
import '../model/model.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);
  final _pageController = PageController(viewportFraction: 0.75);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _pageController = PageController(viewportFraction: 0.75);
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

  final cartController = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(ColorConstants.baseColor),
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const CustomAppBar(),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(TextConstants.appname,
                    style: mystyle.copyWith(
                        fontSize: 30,
                        color: Color(ColorConstants.iconColor_white)))
              ],
            ),
            Expanded(
              child: FutureBuilder(
                  future: getUserApi(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(
                          child: CircularProgressIndicator(
                        color: Color(ColorConstants.iconColor_white),
                      ));
                    } else {
                      return PageView.builder(
                          physics: BouncingScrollPhysics(),
                          itemCount: data.length,
                          controller: _pageController,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                margin: EdgeInsets.symmetric(vertical: 30.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(36),
                                    color:
                                        Color(ColorConstants.iconColor_white)),
                                child: Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Positioned(
                                      child: Text(
                                        data?[index]['brand'],
                                        style: mystyle,
                                      ),
                                      top: 20,
                                      bottom: 10,
                                      right: 10,
                                      left: 20,
                                    ),
                                    Positioned(
                                      child: Image(
                                          image: NetworkImage(data[index]
                                                  ['image_link']
                                              .toString())),
                                      top: 25,
                                      right: 40,
                                      left: 40,
                                    ),
                                    Positioned(
                                      child: Container(
                                        height: 80,
                                        width: 40,
                                        decoration: BoxDecoration(
                                          color: Color.fromARGB(
                                              255, 206, 203, 203),
                                          borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(36),
                                            bottomLeft: Radius.circular(36),
                                          ),
                                        ),
                                        child: IconButton(
                                            icon: (isfavourite
                                                ? Icon(Icons.favorite)
                                                : Icon(Icons.favorite_border)),
                                            color:
                                                Color(ColorConstants.gradient2),
                                            onPressed: () {
                                              cartController.addProduct(
                                                  Product.fromJson(
                                                      data[index]));

                                              favourite();
                                            }),
                                      ),
                                      top: 0,
                                      right: 30,
                                    ),
                                    Positioned(
                                      child: Text(data?[index]['name'],
                                          style: mystyle.copyWith(
                                              color: Color(
                                                  ColorConstants.baseColor))),
                                      top: 240,
                                      right: 40,
                                      left: 40,
                                    ),
                                    Positioned(
                                      child: Wrap(
                                        children: [
                                          Text("${data[index]['price']}",
                                              style: mystyle.copyWith(
                                                  color: Color(ColorConstants
                                                      .baseColor))),
                                          Text(
                                            '\$',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15),
                                          ),
                                        ],
                                      ),
                                      bottom: 60,
                                      right: 40,
                                      left: 40,
                                    ),
                                    Positioned(
                                      child: Container(
                                        height: 40,
                                        width: 80,
                                        decoration: mydecoration,
                                        child: IconButton(
                                            onPressed: () {
                                              Navigator.pushReplacement(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        DetailPage(
                                                            image: data[index][
                                                                    'image_link']
                                                                .toString(),
                                                            name: data[index]
                                                                ['name'],
                                                            brand: data[index]
                                                                ['brand'],
                                                            description:
                                                                data[index][
                                                                    'description'],
                                                            price: data[index]
                                                                ['price'],
                                                            rating: data[index]
                                                                ['rating'])),
                                              );
                                            },
                                            icon: Icon(
                                              Icons.arrow_forward,
                                              color: Color(ColorConstants
                                                  .iconColor_white),
                                            )),
                                      ),
                                      bottom: 55,
                                      right: 30,
                                    ),
                                  ],
                                ),
                              ),
                            );
                          });
                    }
                  }),
            ),
            CustomBottomBar(),
            SizedBox(
              height: 8,
            )
          ],
        ),
      ),
    );
  }
}
