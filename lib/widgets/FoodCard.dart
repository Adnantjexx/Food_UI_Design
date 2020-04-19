import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {

  final String foodImage;
  final String foodName;
  final int foodPrice;


  FoodCard(this.foodImage, this.foodName, this.foodPrice);

  @override
  Widget build(BuildContext context) {


    return GestureDetector(
      child: Container(
        height: 300,
        width: 225,
        margin: EdgeInsets.only(right: 20),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)
          ),
          color: Color(0xffFFF5E2),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 50,
                  width: 50,
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(6, 6),
                        blurRadius: 6
                      )
                    ]
                  ),
                  child: Image(
                      image: AssetImage("assets/images/KFC_logo.svg.png"),

                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Hero(
                  tag: foodImage,
                  child: Image(
                    height: 130,
                      image: AssetImage(foodImage)
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        foodName,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        "\$${foodPrice}",
                        style: TextStyle(
                            fontSize: 20,
                          color: Color(0xffEA745D),
                          fontWeight: FontWeight.bold
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
