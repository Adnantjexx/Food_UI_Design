import 'package:flutter/material.dart';
import 'package:fooddesign/FadeAnimation/FadeAnimation.dart';
import 'package:fooddesign/model/FoodItems.dart';

class FoodDetails extends StatefulWidget {

  final String foodImage;
  final String foodName;
  final int foodPrice;

  FoodDetails(this.foodImage, this.foodName, this.foodPrice);

  @override
  _FoodDetailsState createState() => _FoodDetailsState();
}

class _FoodDetailsState extends State<FoodDetails> {

  int _num = 0;

  void add(){
    setState(() {
      _num++;
    });
  }

  void minus(){
    setState(() {
      if(_num != 0){
        _num--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFF5E2),
      body: Container(
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 40,top: 40),
              child: Text(
                widget.foodName,
                style: TextStyle(
                  fontSize: 40,
                  color: Color(0xFF1F4133),
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 250,
              width: 200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 220,
                    width: 220,
                    child: Hero(
                      tag: widget.foodImage,
                      child: Image(
                        image: AssetImage(widget.foodImage),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 55,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Icon(
                          Icons.favorite_border,
                          size: 30,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 55,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Icon(
                          Icons.share,
                          size: 30,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 30),
                    child: Text(
                      "\$${widget.foodPrice}",
                      style: TextStyle(
                        fontSize: 40,
                        color: Color(0xFF1F4133)
                      ),
                    ),
                  ),
                  Container(
                    height: 85,
                    width: 250,
                    decoration: BoxDecoration(
                      color: Color(0xffFDBB40),
                      borderRadius: 
                      BorderRadius.only(topLeft: Radius.circular(15),bottomLeft: Radius.circular(15)),

                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          height: 55,
                          width: 115,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              IconButton(
                                  icon: Icon(Icons.keyboard_arrow_left,color: Colors.black,),
                                  onPressed: minus
                              ),
                              Text(
                                "$_num",
                                style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              IconButton(
                                  icon: Icon(Icons.keyboard_arrow_right,color: Colors.black,),
                                  onPressed: add
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Add to cart",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              padding: EdgeInsets.only(left: 30,right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Ingredients",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1F4133)
                    ),
                  ),
                  IconButton(
                      icon: Icon(Icons.more_vert,color: Color(0xFF1F4133),),
                      onPressed: null
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30,right: 30),
              child: Container(
                height: 180,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: <Widget>[
                   FadeAnimation(1.5, Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            child: Row(
                              children: <Widget>[
                                Container(
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xffEA745D)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Image(
                                        image: AssetImage("assets/images/cheese.png")
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "American\n"
                                      "cheese",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF1F4133)
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20,top: 25),
                            child: Text(
                              "+ Add",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Color(0xffEA745D)
                              ),
                            ),
                          )
                        ],
                      ),
                    ) ),
                    SizedBox(
                      height: 20,
                    ),
                   FadeAnimation(1.7,Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            child: Row(
                              children: <Widget>[
                                Container(
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0xffFDBB40)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Image(
                                        image: AssetImage("assets/images/meat.png")
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "Ground\n"
                                      "meat",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF1F4133)
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20,top: 25),
                            child: Text(
                              "+ Add",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                color: Color(0xffFDBB40)
                              ),
                            ),
                          )
                        ],
                      ),
                    )),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
