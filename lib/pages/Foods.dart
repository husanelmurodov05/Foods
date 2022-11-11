import 'package:flutter/material.dart';
import 'package:lesson14/pages/Foods2.dart';

class Food extends StatefulWidget {
  const Food({Key? key}) : super(key: key);

  @override
  State<Food> createState() => _FoodState();
}

class _FoodState extends State<Food> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        toolbarHeight: 120,
        centerTitle: true,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 15),
              child: Image(
                  width: 100,
                  height: 80,
                  image: AssetImage("assets/images/burger 1.png")),
            ),
            Container(
              margin: EdgeInsets.only(top: 20,),
              child: Text(
                "Need",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 45,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Container(
               margin: EdgeInsets.only(top: 20,),
              child: Text(
                "Food",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    fontSize: 45),
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children:[
           Container(
          width: double.infinity,
          height: 700,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg-image.png"),
            ),
          ),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(right: 90,left: 90,top: 50,bottom: 20),
              child: Text("Sign In", style: TextStyle(fontSize: 50,fontWeight: FontWeight.w400))),
              
              Container(
                margin: EdgeInsets.only(left: 10,right: 10,bottom: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                    hintText: "Email",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
                    ),
                  ),
                ),
              ),
                 Container(
                margin: EdgeInsets.only(left: 10,right: 10,),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                    hintText: "Enter you password",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: TextButton(onPressed: (){}, child:Text(
                  "Forgot password ?",
                  style: TextStyle(color: Colors.grey,fontSize: 18)
                ,))),
                Container(
                  width: double.infinity,
                  height: 45,
                  margin: EdgeInsets.only(left: 15,right: 15,bottom: 170),
                  child: ElevatedButton(onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context) =>MyFood()  ));
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
                    backgroundColor: MaterialStateProperty.all(Colors.lightBlueAccent)),
                   child: Center(child: Text("Login",style: TextStyle(fontSize: 23),))),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child: Text("Now accaunt yet?",style: TextStyle(color: Colors.grey,fontSize: 18),)),
                  Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Text("Sign up now>",style: TextStyle(color: Colors.blue,fontSize: 15),)),
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
