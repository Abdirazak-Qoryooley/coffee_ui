// ignore_for_file: non_constant_identifier_names

import 'package:coffee_ui/model.dart/model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

import '../controller/milk_controller.dart';

class product_deteil extends StatefulWidget {
  product_deteil({super.key, required this.Product});

  final product Product;

  final MilkController controller = Get.put(MilkController());
  @override
  State<product_deteil> createState() => _product_deteilState();
}

class _product_deteilState extends State<product_deteil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0201520),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 5,
            ),
            Container(
              width: double.infinity,
              height: 400,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.red,
                  image: DecorationImage(
                      image: AssetImage(widget.Product.image),
                      fit: BoxFit.cover)),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Cappuccino',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Icon(
                    Icons.favorite,
                    color: Colors.white,
                    size: 40,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Row(
                children: [
                  Text(
                    widget.Product.name,
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  RatingBar.builder(
                    initialRating: 1,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemSize: 25,
                    itemCount: 1,
                    itemPadding: EdgeInsets.symmetric(horizontal: 8.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                  Text(
                    '4.5',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                'A single espresso shot poured into hot foamy milk, with the surface topped with mildly sweetened cocoa powder and drizzled with scrumptious caramel syrup ... Read More',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 18),
              child: Text(
                'Choice Of Milk',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            GetX<MilkController>(builder: (controller) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (var i = 0; i < 3; i++)
                    InkWell(
                      onTap: () {
                        controller.selectOption(i);
                      },
                      child: Material(
                        clipBehavior: Clip.antiAlias,
                        child: Container(
                          width: 110,
                          height: 40,
                          decoration: BoxDecoration(
                            color: i == controller.selectedIndex.value
                                ? Color(0xff0efe3c8)
                                : Colors.white,
                            // border: Border.all(color: Color(0xff0efe3c8)),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Text(
                                ['Oat Milk', 'Soy Milk', 'Almond Milk'][i]),
                          ),
                        ),
                      ),
                    ),
                ],
              );
            }),
            Padding(
              padding: const EdgeInsets.only(left: 25.0, top: 15),
              child: Row(
                children: [
                  Column(
                    children: [
                      Text(
                        'price',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "\$${widget.Product.price.toString()}",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 25),
                    width: 290,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Color(0xff0efe3c8),
                        borderRadius: BorderRadius.circular(12)),
                    child: Center(
                      child: Text(
                        'Buy Now',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
