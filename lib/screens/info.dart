import 'package:flutter/material.dart';

class Info_page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
      appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('About - hymns_garo')),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 540) {
            return Padding(
              padding: EdgeInsets.only(
                  top: 80, left: 10, right: 10, bottom: 15),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('images/info_img.png',),
                    SizedBox(height: 10),
                    Text('Hynms_garo',  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400, fontSize: 30,
                    ),),
                    SizedBox(height: 20),
                    Text(
                      'Hymns_garo is a christian hymn lyrics application in Garo(A.chik) language developed for Garo christians. You can quickly search and view lyrics easily. Also you can zoom in, zoom out and even copy the lyrics and share it with your friends. This app is absolutely free.',
                      style: TextStyle(fontSize: 20, color: Colors.white,),),
                    SizedBox(height: 20),
                    Text('Developed by Perry Marak.', style: TextStyle(
                        color: Colors.white,
                        fontSize: 20, fontWeight: FontWeight.w400),)
                  ]
              ),
            );
          }
          else {return Padding(
            padding: EdgeInsets.only(
                top: 30, left: 10, right: 10, bottom: 15),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('images/info_img.png',),
                  SizedBox(height: 10),
                  Text('Hynms_garo', style: TextStyle(
                    fontWeight: FontWeight.w400, fontSize: 30,
                    color: Colors.white,
                  ),),
                  SizedBox(height: 20),
                  Text(
                    'Hymns_garo is a christian hymn lyrics application in Garo(A.chik) language developed for Garo christians. You can quickly search and view lyrics easily. Also you can zoom in, zoom out and even copy the lyrics and share it with your friends. This app is absolutely free.',
                    style: TextStyle(fontSize: 20, color: Colors.white),),
                  SizedBox(height: 20),
                  Text('Developed by Perry Marak.', style: TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w400, color: Colors.white),)
                ]
            ),
          );}
        },
      ),
    );
  }
}
