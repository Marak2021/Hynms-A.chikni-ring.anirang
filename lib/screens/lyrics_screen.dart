import 'package:flutter/material.dart';
import '../asssets/song_data.dart';


class LyricsScreen extends StatelessWidget {
  final int num;
  LyricsScreen({required this.num});

  @override
  Widget build(BuildContext context) {
    List<int> convertedNum = [for (var i=0; i < songs.length; i++) if (num == songs[i]['songNumber']) i];

    return Scaffold(
      backgroundColor: Color(0xff68BBE3),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blue,
          title: FittedBox(
            child: Text('${songs[convertedNum[0]]['title']} \n(Git No.${songs[convertedNum[0]]['songNumber'].toString()})',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white),),
          ),
        ),
      body: LayoutBuilder(
        builder: (context, constraints) {
        return InteractiveViewer(
          maxScale: 20.0,
          child: Container(
            height: constraints.maxHeight,
            width: constraints.maxWidth,
            padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 20.0, top: 30.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextSelectionTheme(
                    data:TextSelectionThemeData(
                      selectionColor: Color(0xff0E86D4),
                      selectionHandleColor: Colors.blue,
                    ),
                    child: SelectableText(songs[convertedNum[0]]['song'],
                      textAlign: TextAlign.center,
                      showCursor: false,
                      cursorWidth: 5,
                      toolbarOptions: ToolbarOptions(copy: true, selectAll: true),
                      style: TextStyle(fontSize: 20.0, height: 1.2, color: Colors.black87),),
                  ),
                ],
              ),
            ),
          ),
        );}
      ),
    );
  }
}
