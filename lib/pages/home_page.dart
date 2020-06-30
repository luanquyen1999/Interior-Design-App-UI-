import 'package:flutter/material.dart';
import 'package:flutter_app_interior_design/pages/detail_page.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody1(),
    );
  }

Widget getBody1(){
  return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
          child: Column(
            children:<Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:<Widget>[
                  SvgPicture.asset(
                      "assets/images/burger_icon.svg",
                  ),
                  Row(
                    children:<Widget>[
                      SvgPicture.asset(
                          "assets/images/search_icon.svg",
                      ),
                      SizedBox(width: 20,),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(
                                "assets/images/user4.jpg"
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:<Widget>[
                  Text("Top Designer",style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                  ),
                  ),
                  SvgPicture.asset("assets/images/forward_icon.svg")
                ],
              ),
              SizedBox(height: 30,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    UserProfile(
                      images: "assets/images/user1.jpg",
                      text: "Jean-Luis",
                    ),
                    UserProfile(
                      images: "assets/images/user2.jpg",
                      text: "Phillinpe",
                    ),
                    UserProfile(
                      images: "assets/images/user3.jpg",
                      text: "Michael",
                    ),
                    UserProfile(
                      images: "assets/images/user5.jpg",
                      text: "Lesly Juarez",
                    ),
                    UserProfile(
                      images: "assets/images/user6.jpg",
                      text: "Tim sion",
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:<Widget>[
                  Text("Popular Design",style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                  ),
                  ),
                  SvgPicture.asset("assets/images/forward_icon.svg")
                ],
              ),
              SizedBox(height: 20,),
              InkWell(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_) => DetailPage()));
              },
                child: Container(
                  width: double.infinity,
                  height: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/images/image_1.png",
                    ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Row(
                children:<Widget>[
                  Column(
                    children:<Widget>[
                      Container(
                        width: (MediaQuery.of(context).size.width - 80) / 2,
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/image_2.png"
                              ),
                              fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children:<Widget>[
                          Column(
                            children:<Widget>[
                              Container(
                                width: (MediaQuery.of(context).size.width - 80) / 2,
                                height: 230,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/image_3.png"
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Spacer(),
//                SizedBox(width: 20,),
                  Column(
                    children:<Widget>[
                      Container(
                        width: (MediaQuery.of(context).size.width - 80) / 2,
                        height: 230,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage(
                                "assets/images/image_4.png"
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children:<Widget>[
                          Column(
                            children:<Widget>[
                              Container(
                                width: (MediaQuery.of(context).size.width - 80) / 2,
                                height: 150,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/image_5.png"
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
  );
    }
}

class UserProfile extends StatelessWidget {
  final String images, text;
  const UserProfile({
    Key key, this.images, this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Column(
        children: [
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image:DecorationImage(
                image: AssetImage(images),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(text)
        ],
      ),
    );

  }
}