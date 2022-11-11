
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';
class MyFood extends StatefulWidget {
  const MyFood({Key? key}) : super(key: key);

  @override
  State<MyFood> createState() => _MyFoodState();
}

class _MyFoodState extends State<MyFood> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     bottomNavigationBar: FancyBottomNavigation(
      barBackgroundColor: Colors.white,
      activeIconColor:Colors.black,
    circleColor:Colors.lightBlueAccent,
    tabs: [
        TabData(iconData: Icons.home, title: "Home"),
        TabData(iconData: Icons.shopify, title: "Shopy"),
        TabData(iconData: Icons.messenger, title: "Messeges"),
        TabData(iconData: Icons.person, title: "Person")
    ], onTabChangedListener: (int position) {  },
     ),
      appBar: AppBar(
        toolbarHeight: 80,
        elevation: 5,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(
                top: 15,
              ),
              child: const Text("Need",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.w400)),
            ),
            Container(
              margin: const EdgeInsets.only(top: 15, right: 130),
              child: const Text("Food",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 25,
                    fontWeight: FontWeight.w300,
                  )),
            )
          ],
        ),
        leading: Container(
          margin: const EdgeInsets.only(left: 5, bottom: 10),
          child: const Image(
              width: 100,
              height: 200,
              image: AssetImage("assets/images/burger 1.png")),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              //    margin: EdgeInsets.only(left: 50),
              child: const CircleAvatar(
                minRadius: 20,
                maxRadius: 20,
                //    backgroundColor: Colors.white ,
                foregroundColor: Colors.black,
                child: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 145,
            margin: const EdgeInsets.only(left: 15, right: 15, top: 25),
            child: Row(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                        left: 5,
                        top: 10,
                      ),
                      child: const Text(
                        "Paket Cheese ",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 15, top: 10, bottom: 15),
                      child: const Text(
                        "Burger komplit",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        right: 10,
                      ),
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25))),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.red)),
                          child: const Text(
                            "Order Now",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )),
                    ),
                  ],
                )
              ],
            ),
            decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(5),
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/row-banner 1.png"))),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.only(right: 230),
            child: const Text(
              'Categories',
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Card(
                elevation: 5,
                child: Container(
                  width: 100,
                  height: 100,
                  child: Container(
                      margin: const EdgeInsets.only(top: 50),
                      child: Center(
                        child: Container(
                          margin: const EdgeInsets.only(top: 25),
                          child: const Text(
                            "Burger",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/menu-1 1.png"))),
                ),
              ),
              Card(
                elevation: 5,
                child: Container(
                  width: 100,
                  height: 100,
                  child: Container(
                      margin: const EdgeInsets.only(top: 40),
                      child: Center(
                          child: Container(
                        margin: const EdgeInsets.only(top: 35),
                        child: const Text(
                          "Drink",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ))),
                  //     margin: EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/cat-6 1.png"))),
                ),
              ),
              Card(
                elevation: 5,
                child: Container(
                  width: 100,
                  height: 100,
                  child: Container(
                      margin: const EdgeInsets.only(top: 40),
                      child: Center(
                          child: Container(
                        margin: const EdgeInsets.only(top: 35),
                        child: const Text(
                          "Pizza",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ))),
                  //     margin: EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          "assets/images/food-8 1.png",
                        )),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            margin: const EdgeInsets.only(right: 230,left: 10),
            child: const Text(
              'Popular Now',
              style: TextStyle(
                color: Colors.black,
                fontSize: 23,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Expanded(
            child: ListView(
              scrollDirection : Axis.horizontal,
                 children:[ 
              Row(
          
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    margin: const EdgeInsets.only(left: 20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: const AssetImage("assets/images/blog-1 1.png"))),
                  ),
                  Container(
                    width: 200,
                    height: 200,
                         margin: const EdgeInsets.only(left: 20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: const AssetImage("assets/images/blog-3 1.png"))),
                  ),
                  Container(
                    width: 200,
                    height: 200,
                       margin: const EdgeInsets.only(left: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            "assets/images/national-hamburger-day.jpg",
                          )),
                    ),
                  ),
                ],
              
              ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
