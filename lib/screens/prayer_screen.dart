import 'package:flutter/material.dart';
import '../asssets/song_data.dart';

class PrayerScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff68BBE3),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text('${prayer[0]['title']}', style: TextStyle(fontSize: 25.0),),
      ),
      body: InteractiveViewer(
        maxScale: 10.0,
        child: LayoutBuilder(
          builder: (context, constraints) {
          return Container(
            height: constraints.maxHeight,
            width: constraints.maxWidth,
            padding: EdgeInsets.only(top: 30.0, left: 10.0, right: 10.0, bottom: 15.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextSelectionTheme(
                    data:TextSelectionThemeData(
                      selectionColor: Color(0xff0E86D4),
                      selectionHandleColor: Colors.blue,
                    ),
                    child: SelectableText(prayer[0]['prayer'],
                      textAlign: TextAlign.center,
                      showCursor: false,
                      cursorWidth: 5,
                      toolbarOptions: ToolbarOptions(copy: true, selectAll: true),
                      style: TextStyle(fontSize: 20.0, height: 1.5, color: Colors.black87),),
                  ),
                ],
              ),
            ),
          );},
        ),
      )
    );
  }
}
