import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget {
  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
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
                SizedBox(height: 10,),

                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Stack(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage("img/allu.jpg"),
                            radius: 25,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:30.0,top: 29),
                            child: CircleAvatar(
                              backgroundImage: AssetImage("img/add_green.webp"),
                              radius: 10,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("My status",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 18),),
                          SizedBox(height: 5,),
                          Text("Tap to add status update",style: TextStyle(color: Colors.black38,fontSize: 15),)
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 5,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  alignment: Alignment.centerLeft,
                  color: Colors.black12,
                  height: 35,
                  child: Text("Recently updates",style: TextStyle(color: Colors.black54,fontSize: 15,fontWeight: FontWeight.w500),),
                ),
                SizedBox(height: 5,),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: CircleAvatar(
                        radius: 28,
                        backgroundColor: Colors.cyanAccent,
                        child: CircleAvatar(
                          radius: 25,
                          backgroundImage:AssetImage("img/balayya.jpg"),
                        ),
                      ),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Raghu",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 18),),
                          SizedBox(height: 5,),
                          Text("12 minutes ago",style: TextStyle(color: Colors.black38,fontSize: 15),)
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 5,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  alignment: Alignment.centerLeft,
                  color: Colors.black12,
                  height: 35,
                  child: Text("Viewed updates",style: TextStyle(color: Colors.black54,fontSize: 15,fontWeight: FontWeight.w500),),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            itemCount: text1.length,
                            itemBuilder: (context,index){
                              return Status(
                                image: image[index],
                                text1: text1[index],
                                text2: text2[index],
                              );
                            },
                          )
                      ),
                    ],
                  ),

                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Status extends StatelessWidget {
  const Status({
    this.image,
    this.text1,
    this.text2
  });
  final String image;
  final String text1;
  final String text2;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal:5),
              child: CircleAvatar(
                radius: 28,
                backgroundColor: Colors.black38,
                child: CircleAvatar(
                  radius: 25,
                  backgroundImage:AssetImage(image),
                ),
              ),
            ),
            SizedBox(width: 10,),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(text1,style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 18),),
                  SizedBox(height: 5,),
                  Text(text2,style: TextStyle(color: Colors.black38,fontSize: 15),)
                ],
              ),
            )
          ],
        ),
        SizedBox(height: 3,),
        Container(
          color: Colors.black12,
          height: 2,
        ),
        SizedBox(height: 5,)

      ],
    );
  }
}

