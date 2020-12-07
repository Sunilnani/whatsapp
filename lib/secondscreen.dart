import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  List<String> image=["img/allu.jpg","img/balayya.jpg","img/ntr.jpg","img/ram.jpg","img/allu.jpg","img/balayya.jpg","img/ntr.jpg","img/ram.jpg","img/allu.jpg","img/allu.jpg","img/balayya.jpg","img/ntr.jpg","img/ram.jpg","img/allu.jpg","img/allu.jpg",];
  List<String> title=["AlluArjun","Balayya","Ntr","Ramcharan","AlluArjun","Balayya","Ntr","Ramcharan","AlluArjun","AlluArjun","Balayya","Ntr","Ramcharan","AlluArjun","AlluArjun"];
  List<String>text =[" hii sunil","hi laxmi how are u","hi prashanth sir","hii pranay sir","hii karthik sir","hii chandu","hii friends","hii dad"," hii sunil","hii karthik sir","hii chandu","hii friends","hii dad"," hii sunil"," hii sunil",];
  List<String>text1=["23:40","1:20","4:10","2:09","23:40","1:20","4:10","2:09","1:20","23:40","1:20","4:10","2:09","1:20","1:20"];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 10,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
               scrollDirection: Axis.vertical,
                 shrinkWrap: true,
                 itemCount: text.length,
              itemBuilder: (context,index){
            return Charts(
                image: image[index],
                title: title[index],
                text: text[index],
              text1: text1[index],

      );
      },
      )
          ),
          SizedBox(height: 10,),
          
        ],
      ),
    );
  }
}

class Charts extends StatelessWidget {
  const Charts({
    this.image,
    this.title,
    this.text,
    this.text1
  });
  final String image;
  final String title;
  final String text;
  final String text1;

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
              CircleAvatar(
                backgroundImage: AssetImage(image),
                radius: 27,
              ),
              SizedBox(width: 15,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,style: TextStyle(color: Colors.black87,fontSize: 17,fontWeight: FontWeight.w400),),
                  SizedBox(height: 5,),
                  Text(text,style: TextStyle(color: Colors.black38,fontSize: 15,fontWeight: FontWeight.w300),)
                ],
              )
            ],
          ),
        ),
        Text(text1)

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