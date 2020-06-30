import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: getBody2(),
    );
  }
  Widget getBody2(){
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Stack(
        children:<Widget>[
          Container(
            width: double.infinity,
            height: size.height*0.5,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                      "assets/images/image_detail.png",
                  ),
                fit: BoxFit.cover,
              ),
            ),
            child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:<Widget>[
                      InkWell(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: SvgPicture.asset(
                            "assets/images/back_icon.svg",
                        ),
                      ),
                      Row(
                        children:<Widget>[
                          SvgPicture.asset(
                              "assets/images/heart_icon.svg",
                          ),
                          SizedBox(width: 20,),
                          SvgPicture.asset(
                            "assets/images/share_icon.svg",
                          ),
                        ],
                      )
                    ],
                  ),
                ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: size.height*0.45),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:<Widget>[
                  Align(
                    child: Container(
                      width: 150,
                      height: 7,
                      decoration: BoxDecoration(
                        color: Colors.red[50],
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text(
                    "10 best interior ideas for your\nliving room",
                    style: TextStyle(fontSize: 20, height: 1.5),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children:<Widget>[
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage("assets/images/user2.jpg"),
                                fit: BoxFit.cover,
                            ),
                        ),
                      ),
                      SizedBox(width: 20,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Jean-Luis",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            "Interior Design",
                            style: TextStyle(fontSize: 13),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children:<Widget>[
                      Info(
                        text: "Interior",
                      ),
                      Info(
                        text: "40m2",
                      ),
                      Info(
                        text: "Ideas",
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Text("Nobody wants to stare at a blank wall all day long, which is why wall art is such a crucial step in the decorating process. And once you start brainstorming, the rest is easy. From gallery walls to DIY pieces like framing your accessories and large-scale photography, we've got plenty of wall art ideas to spark your creativity. And where better to look for inspiration that interior designer-decorated walls",style: TextStyle(
                      height: 1.6
                  ),
                  ),
                  SizedBox(height: 20,),
                  Text("Gallery",style: TextStyle(
                      fontSize: 18
                  ),
                  ),
                  SizedBox(height: 10,),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children:<Widget>[
                        ImageInteriorDesign(
                          img: "assets/images/image_2.png",
                        ),
                        ImageInteriorDesign(
                          img: "assets/images/image_3.png",
                        ),
                        ImageInteriorDesign(
                          img: "assets/images/image_4.png",
                        ),
                        ImageInteriorDesign(
                          img: "assets/images/image_5.png",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ImageInteriorDesign extends StatelessWidget {
  final String img;
  const ImageInteriorDesign({
    Key key, this.img,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
              image: AssetImage(
                  img,
              ),
            fit: BoxFit.cover
          ),
        ),
      ),
    );
  }
}

class Info extends StatelessWidget {
  final String text;
  const Info({
    Key key, this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Container(
        decoration: BoxDecoration(
      border: Border.all(color: Colors.grey),
       borderRadius: BorderRadius.circular(3),
        ),
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Text(text),
        ),
      ),
    );
  }
}

