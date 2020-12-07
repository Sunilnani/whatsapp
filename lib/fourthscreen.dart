import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FourthScreen extends StatefulWidget {
  @override
  _FourthScreenState createState() => _FourthScreenState();
}

class _FourthScreenState extends State<FourthScreen> {
  List<String> image=["img/allu.jpg","img/balayya.jpg","img/ntr.jpg","img/ram.jpg","img/allu.jpg","img/balayya.jpg","img/ntr.jpg","img/ram.jpg","img/allu.jpg","img/allu.jpg"];
  List<String> text1=["AlluArjun","Balayya","Ntr","Ramcharan","AlluArjun","Balayya","Ntr","Ramcharan","AlluArjun","AlluArjun",];
  List<String> text2 =["today, 23:40","today, 1:20","today, 4:10","today, 2:09","today, 23:40","today, 1:20","today, 4:10","today, 2:09","today, 1:20","today, 1:20"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height:MediaQuery.of(context).size.height,
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: text1.length,
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemBuilder:(context, index){
                      return Calls(
                        text1: text1[index],
                        text2: text2[index],
                        image: image[index],
                      );
                    },
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

class Calls extends StatelessWidget {
  const Calls({
    this.image,
    this.text1,
    this.text2

  }) ;
  final String image;
  final String text1;
  final String text2;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10   ),
                  child:CircleAvatar(
                    backgroundImage: AssetImage(image),
                    radius: 25,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(text1,style: TextStyle(color: Colors.black,fontSize: 18,fontWeight:FontWeight.w500),),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Icon(Icons.add_to_home_screen_outlined,size: 15,),
                        SizedBox(width: 5,),
                        Text(text2,style: TextStyle(color: Colors.black38),),
                      ],
                    )
                  ],
                ),

              ],
            ),
          ),

        Container(
          padding: EdgeInsets.only(right: 20),
          child: Icon(Icons.call),
        )
      ],
    ),
        SizedBox(height: 10,),
        Container(
          height: 2,
          color: Colors.black12,
        )
      ],
    );
  }
}

