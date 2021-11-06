import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hymns_garo/screens/info.dart';
import 'asssets/poaraiani.dart';
import 'asssets/songs_page.dart';
import 'screens/prayer_screen.dart';
import 'screens/info.dart';

const List<Color> blue = [Color(0xff68BBE3), Color(0xff0E86D4), Color(0xff055C9D), Color(0xff003060)];

class WelcomePage extends StatefulWidget {

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blue[2],
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 540) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0,),
                        child: Text('Rimchaksoa,',
                          style: TextStyle(
                            fontSize: 45.0,
                            color: Colors.white,
                          ),),
                      ),
                      Container(
                      padding: EdgeInsets.only(left: 25.0, bottom: 30.0),
                        child: Row(
                        children : [
                          Icon(FontAwesomeIcons.prayingHands,
                            color: Colors.white, size: 20.0,),
                          SizedBox(width: 20),
                          IconButton(icon: Icon(Icons.info_outline_rounded,
                          color: Colors.white, size: 25),
                          onPressed: () {
                            Navigator.push(
                              context, MaterialPageRoute(builder: (context) {
                              return Info_page();
                            }),);
                          },
                          ),
                        ],
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(top: 20.0, bottom: 20.0, left: 10.0, right: 10.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(topRight: Radius.circular(50.0),topLeft: Radius.circular(50.0),),
                      ),
                      child: Column(
                        children: [
                          ButtonDecoration(textTitle: 'Ring.anirang', pic: 'images/guitar-1.jpg',
                            navigator: () {
                              Navigator.push(context, MaterialPageRoute(builder: (
                                  context) {
                                return SongList();
                              },),);
                            },),
                          ButtonDecoration(textTitle: 'Gitelni Bi.ani', pic: 'images/praying-hands.jpg',
                              navigator: () {
                                Navigator.push(context, MaterialPageRoute(builder: (
                                    context) {
                                  return PrayerScreen();
                                },),);
                              }),
                          ButtonDecoration(textTitle: 'Aganchakgrike \nPoraiani', pic: 'images/cross.jpg',
                              navigator: () {
                                Navigator.push(context, MaterialPageRoute(builder: (
                                    context) {
                                  return WordsList();
                                },),);
                              }),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            }
            else {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0,),
                        child: Text('Rimchaksoa,',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 45.0,
                            color: Colors.white,
                          ),),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 25.0, bottom: 30.0),
                        child: Row(
                          children : [
                            Icon(FontAwesomeIcons.prayingHands,
                              color: Colors.white, size: 20.0,),
                            SizedBox(width: 20),
                            IconButton(icon: Icon(Icons.info_outline_rounded,
                                color: Colors.white, size: 25),
                              onPressed: () {
                                Navigator.push(
                                  context, MaterialPageRoute(builder: (context) {
                                  return Info_page();
                                }),);
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(top: 20.0, bottom: 20.0, left: 10.0, right: 10.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(topRight: Radius.circular(50.0),topLeft: Radius.circular(50.0),
                            bottomLeft: Radius.circular(50.0), bottomRight: Radius.circular(50.0)),
                      ),
                      child: Column(
                        children: [
                          ButtonDecoration(textTitle: 'Ring.anirang', pic: 'images/guitar-1.jpg',
                            navigator: () {
                              Navigator.push(context, MaterialPageRoute(builder: (
                                  context) {
                                return SongList();
                              },),);
                            },),
                          ButtonDecoration(textTitle: 'Gitelni Bi.ani', pic: 'images/praying-hands.jpg',
                              navigator: () {
                                Navigator.push(context, MaterialPageRoute(builder: (
                                    context) {
                                  return PrayerScreen();
                                },),);
                              }),
                          ButtonDecoration(textTitle: 'Aganchakgrike \nPoraiani', pic: 'images/cross.jpg',
                              navigator: () {
                                Navigator.push(context, MaterialPageRoute(builder: (
                                    context) {
                                  return WordsList();
                                },),);
                              }),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            }
          },

        ),
      ),
          );
  }
}

class ButtonDecoration extends StatelessWidget {
  ButtonDecoration({required this.textTitle, required this.pic, required this.navigator});
  String textTitle;
  String pic;
  dynamic navigator;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
          margin: EdgeInsets.only(top:5.0, bottom: 5.0),
          decoration: BoxDecoration(
            color: blue[3],
            borderRadius: BorderRadius.all(Radius.circular(40.0)),
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              highlightColor: blue[1].withOpacity(0.6),
              splashColor: blue[1].withOpacity(0.6),
              borderRadius: BorderRadius.circular(40.0),
              onTap: navigator,
              child: Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text('${textTitle}',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),),),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      margin: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('${pic}'),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(40.0)),
                      ),),
                  ),
                ],
              ),
            ),
          ),
        ),
    );
  }
}