import 'package:flutter/material.dart';
import 'package:search_page/search_page.dart';
import 'song_data.dart';
import '../screens/lyrics_screen.dart';

/// This is a very simple class, used to
/// demo the `SearchPage` package
class Song {
  final String name;
  final int number;

  Song(this.name, this.number);
}

class SongList extends StatelessWidget {
  static List<Song> songList= [for (var i=0; i < songs.length; i++) Song(songs[i]['title'], songs[i]['songNumber'])];
  late int songNumbering;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      // backgroundColor: Color(0xff003060),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text('Ring.anirang'),
      ),
      body: ListView.builder(
        itemCount: songList.length,
        itemBuilder: (context, index) {
          final Song song = songList[index];
          return Card(
            child: ListTile(
              onTap: () async {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LyricsScreen(num:song.number);
                }),);
              },
              title: Text(song.name, style: TextStyle(
                fontWeight: FontWeight.w400,
              ),),
              trailing: Text('Git No. ${song.number.toString()}',),),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Git No. ong.jaode ko sebo',
        onPressed: () => showSearch(
          context: context,
          delegate: SearchPage<Song>(
            onQueryUpdate: (s) => print(s),
            items: songList,
            searchLabel: 'Search',
            suggestion: Center(
              child: Text('Git No. ong.jaode biming ko see sandibo',
              style: TextStyle(
                fontSize: 16.0,
              ),),
            ),
            failure: Center(
              child: Text('Ia Git de dongja :(', style: TextStyle(
                fontSize: 16.0,
              )),
            ),
            filter: (song) => [
              song.name,
              song.number.toString(),
            ],
            builder: (song) => Card(
              child: ListTile(
                title: Text(song.name,),
                trailing: Text('Git No. ${song.number.toString()}',),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return  LyricsScreen(num:song.number);
                  }),);
                },
              ),
            ),
          ),
        ),
        child: Icon(Icons.search),
      ),
    );
  }
}