import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar( 
          title: Text('Course'),
          centerTitle: true,
          leading: Icon(Icons.arrow_back_ios),
          actions: [
            Icon(Icons.more_vert),
          ],
          backgroundColor: Color.fromARGB(255, 67, 202, 255),
          elevation: 0,
        ),
        body: Stack(
          children: <Widget>[
            Container(
              height: 250,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 67, 202, 255),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.elliptical(300, 300),
                  bottomRight: Radius.elliptical(300, 300),
                )
              ),
            ),
            Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Spanish', style: TextStyle(
                            color: Colors.white, fontSize: 35
                          ),),
                          Container(
                            height: 30,
                            width: 120,
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text('Begginer', style: TextStyle(color: Color.fromARGB(255, 67, 202, 255)),),
                                IconButton(icon: Icon(Icons.keyboard_arrow_down_rounded), color: Color.fromARGB(255, 67, 202, 255),
                                onPressed: (){},
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(Icons.diamond, color: Color.fromARGB(255, 255, 17, 0),),
                                Icon(Icons.diamond, color: Color.fromARGB(255, 255, 17, 0),),
                                Text('2 Milestones', style: TextStyle(color: Colors.white),),
                              ],
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: CircularPercentIndicator(
                          radius: 45,
                          lineWidth: 6,
                          backgroundWidth: 2,
                          percent: 0.4,
                          backgroundColor: Colors.red,
                          center: Text('43 %', style:  TextStyle(fontSize: 28, color: Colors.white,fontWeight: FontWeight.normal),),
                        ),
                      ),
                    ],
                  ),
                ),

                Expanded(
                  child: GridView.count(crossAxisCount: 2,
                  children: <Widget>[
                    Card (
                      margin: const EdgeInsets.all(20),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color.fromARGB(255, 207, 207, 207),
                                        blurRadius: 7,
                                        spreadRadius: 1,
                                        offset: Offset(1,5),
                                      )
                                    ]
                                  ),
                                  child: Image.network('https://cdn.pixabay.com/photo/2017/06/13/21/51/logo-2400242_960_720.png', scale: 20,),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 6),
                            child: Text('Basics', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                          ),
                          Text('4/5'),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: LinearPercentIndicator(
                              backgroundColor: Colors.grey,
                              progressColor: Color.fromARGB(255, 0, 131, 124),
                              percent: 0.8,
                              lineHeight: 5,
                              barRadius: Radius.circular(18),
                              linearStrokeCap: LinearStrokeCap.round,
                            ),
                          )
                        ],
                      ),
                    ),
                    Card(
                      margin: const EdgeInsets.all(20),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color.fromARGB(255, 207, 207, 207),
                                        blurRadius: 7,
                                        spreadRadius: 1,
                                        offset: Offset(1,5),
                                      )
                                    ]
                                  ),
                                  child: Image.network('https://e7.pngegg.com/pngimages/673/811/png-clipart-emoji-object-briefcase-suitcase-email-briefcase-english-rectangle.png', scale: 22,),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 6),
                            child: Text('Occupations', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                          ),
                          Text('1/6'),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: LinearPercentIndicator(
                              backgroundColor: Colors.grey,
                              progressColor: Color.fromARGB(255, 190, 92, 0),
                              percent: 0.2,
                              lineHeight: 5,
                              barRadius: Radius.circular(18),
                              linearStrokeCap: LinearStrokeCap.round,
                            ),
                          )
                        ],
                      ),
                    ),
                    Card(
                      margin: const EdgeInsets.all(20),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color.fromARGB(255, 207, 207, 207),
                                        blurRadius: 7,
                                        spreadRadius: 1,
                                        offset: Offset(1,5),
                                      )
                                    ]
                                  ),
                                  child: Image.network('https://c1.klipartz.com/pngpicture/787/972/sticker-png-message-logo-communication-online-chat-communication-studies-conversation-text-rectangle-material-property.png', scale: 23,),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 6),
                            child: Text('Conversation', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                          ),
                          Text('3/5'),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: LinearPercentIndicator(
                              backgroundColor: Colors.grey,
                              progressColor: Color.fromARGB(255, 0, 0, 0),
                              percent: 0.6,
                              lineHeight: 5,
                              barRadius: Radius.circular(18),
                              linearStrokeCap: LinearStrokeCap.round,
                            ),
                          )
                        ],
                      ),
                    ),
                    Card(
                      margin: const EdgeInsets.all(20),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color.fromARGB(255, 207, 207, 207),
                                        blurRadius: 7,
                                        spreadRadius: 1,
                                        offset: Offset(1,5),
                                      )
                                    ]
                                  ),
                                  child: Image.network('https://i.pinimg.com/originals/0f/61/ba/0f61ba72e0e12ba59d30a50295964871.png', scale: 6,),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 6),
                            child: Text('Places', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                          ),
                          Text('1/5'),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: LinearPercentIndicator(
                              backgroundColor: Colors.grey,
                              progressColor: Color.fromARGB(255, 228, 0, 0),
                              percent: 0.2,
                              lineHeight: 5,
                              barRadius: Radius.circular(18),
                              linearStrokeCap: LinearStrokeCap.round,
                            ),
                          )
                        ],
                      ),
                    ),
                    Card(
                      margin: const EdgeInsets.all(20),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color.fromARGB(255, 207, 207, 207),
                                        blurRadius: 7,
                                        spreadRadius: 1,
                                        offset: Offset(1,5),
                                      )
                                    ]
                                  ),
                                  child: Image.network('https://www.vhv.rs/dpng/d/573-5734636_group-4-people-png-transparent-png.png', scale: 17,),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 6),
                            child: Text('Family Members', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                          ),
                          Text('3/5'),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: LinearPercentIndicator(
                              backgroundColor: Colors.grey,
                              progressColor: Color.fromARGB(255, 255, 60, 0),
                              percent: 0.6,
                              lineHeight: 5,
                              barRadius: Radius.circular(18),
                              linearStrokeCap: LinearStrokeCap.round,
                            ),
                          )
                        ],
                      ),
                    ),
                    Card(
                      margin: const EdgeInsets.all(20),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color.fromARGB(255, 207, 207, 207),
                                        blurRadius: 7,
                                        spreadRadius: 1,
                                        offset: Offset(1,5),
                                      )
                                    ]
                                  ),
                                  child: Image.network('https://cdn-icons-png.flaticon.com/512/1155/1155297.png', scale: 14,),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 6),
                            child: Text('Foods', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                          ),
                          Text('2/5'),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: LinearPercentIndicator(
                              backgroundColor: Colors.grey,
                              progressColor: Color.fromARGB(255, 255, 208, 0),
                              percent: 0.4,
                              lineHeight: 5,
                              barRadius: Radius.circular(18),
                              linearStrokeCap: LinearStrokeCap.round,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                  ),
                )

              ],
            )
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}