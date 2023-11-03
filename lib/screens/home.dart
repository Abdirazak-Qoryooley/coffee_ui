import 'package:coffee_ui/components/appar.dart';
import 'package:coffee_ui/components/product_card.dart';
import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0201520),
      body: SafeArea(
        child: Column(
          children: [
            appar_widget(),
            Container(
              margin: EdgeInsets.only(left: 25, right: 25),
              decoration: BoxDecoration(
                  color: Color(0xff0220901),
                  borderRadius: BorderRadius.circular(12)),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: 'Browse Your Favorite Coffee',
                    hintStyle: TextStyle(color: Colors.white),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.white,
                    )),
              ),
            ),
            Expanded(child: Product_card())
          ],
        ),
      ),
    );
  }
}
