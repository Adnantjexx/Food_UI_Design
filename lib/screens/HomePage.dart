import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:fooddesign/FadeAnimation/FadeAnimation.dart';
import 'package:fooddesign/data/FoodData.dart';
import 'package:fooddesign/model/FoodItems.dart';
import 'package:fooddesign/screens/FoodDetails.dart';
import 'package:fooddesign/widgets/FoodCard.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  final List<FoodItems> _items = foods;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1F4133),
      body: Container(
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 15),
              child: Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 30,top: 60),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Search for",
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffEADDE3)
                          ),
                        ),
                        Text(
                          "Recipes",
                          style: TextStyle(
                              fontSize: 40,
                              color: Color(0xffFDBB40)
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    margin: EdgeInsets.only(top: 100),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0, 6),
                          blurRadius: 10
                        )
                      ],
                      image: DecorationImage(
                          image: AssetImage("assets/images/adnantjeexx.jpg"),
                        fit: BoxFit.cover
                      )
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              padding: EdgeInsets.only(left: 40,right: 40),
              child: TextField(
                keyboardType: TextInputType.text,
                style: TextStyle(
                  fontSize: 25,
                  color: Color(0xFFEFE8EB),
                ),

                decoration: InputDecoration(
                  hintText: "Search or scan QR",
                    hintStyle: TextStyle(
                      color: Color(0xffEADDE3),
                      fontSize: 18
                    ),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Color(0xffEADDE3)
                        )
                    ),
                    suffixIcon: Icon(
                      Icons.settings_overscan,
                      color: Color(0xffEADDE3),
                      size: 30,
                    )
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              child: Stack(
                children: <Widget>[
                  Container(
                    width: 60,
                    height: 310,
                    decoration: BoxDecoration(
                        color: Color(0xff173428),
                        borderRadius: BorderRadius.only(topRight: Radius.circular(14),bottomRight: Radius.circular(14))
                    ),
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: DefaultTabController(
                        length: 3,
                        child: TabBar(
                          labelColor: Colors.white,
                          indicatorColor: Color(0xffFDBB40),
                          indicatorSize: TabBarIndicatorSize.label,
                          tabs: <Widget>[
                            Tab(
                              text: "Burger",
                            ),Tab(
                              text: "Pizza",
                            ),Tab(
                              text: "Juice",
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    child: Container(
                      height: 310,
                      padding: EdgeInsets.only(left: 80),
                      child:  ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: _items.length,
                        itemBuilder: (BuildContext context, int index){
                          return GestureDetector(
                            onTap: (){
                              return Navigator.push(context, MaterialPageRoute(
                                  builder: (_) => FoodDetails(
                                      _items[index].foodImage,
                                      _items[index].foodName,
                                      _items[index].foodPrice,
                                  )));
                            },
                            child: FoodCard(
                                _items[index].foodImage,
                                _items[index].foodName,
                                _items[index].foodPrice
                            ),
                          );
                        },
                      ),
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: FadeAnimation(1.5,Container(
                width: 200,
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xffFDBB40)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 60,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0, 2),
                            blurRadius: 15
                          )
                        ],
                        color: Colors.white
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Sat",
                            style: TextStyle(
                              fontSize: 22
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "31",
                            style: TextStyle(
                                fontSize: 25
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 80,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Previous Event",
                            style: TextStyle(
                                fontSize: 15,
                              color: Colors.black45
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Food Challenge event",
                            style: TextStyle(
                                fontSize: 17,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "See event details",
                            style: TextStyle(
                                fontSize: 15,
                              color: Colors.black45
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Container(
                      child: Icon(
                        Icons.keyboard_arrow_right,
                      ),
                    )
                  ],
                ),
              )),
            )
          ],
        ),
      ),
    );
  }
}
