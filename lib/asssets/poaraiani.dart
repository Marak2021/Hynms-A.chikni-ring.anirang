import 'package:flutter/material.dart';
import 'package:search_page/search_page.dart';
import 'song_data.dart';
import '../screens/wisdom_words.dart';

/// This is a very simple class, used to
/// demo the `SearchPage` package
class Words {
  final String name;
  final int number;

  Words(this.name, this.number);
}

class WordsList extends StatelessWidget {
  static List<Words> wordList= [for (var i=0; i < aganchakgrikani.length; i++) Words(aganchakgrikani[i]['title'], aganchakgrikani[i]['number'])];
  late int songNumbering;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      // backgroundColor: Colors.white38,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text('Aganchakgrike Poraianirang'),
      ),
      body: ListView.builder(
        itemCount: wordList.length,
        itemBuilder: (context, index) {
          final Words words = wordList[index];
          return Card(
            child: ListTile(
              onTap: () async {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return WordsScreen(num:words.number);
                }),);
              },
              title: Text(words.name, style: TextStyle(
                fontWeight: FontWeight.w400,
              ),),
              trailing: Text('No. ${words.number.toString()}',),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Git No. ong.jaode ko sebo',
        onPressed: () => showSearch(
          context: context,
          delegate: SearchPage<Words>(
            onQueryUpdate: (s) => print(s),
            items: wordList,
            searchLabel: 'Search',
            suggestion: Padding(
              padding: EdgeInsets.only(left: 10.0, right: 10.0),
              child: Center(
                child: Text('Aganchakgrike Poraiani no. ong.jaode title ko see sandibo',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.0,
                  ),),
              ),
            ),
            failure: Padding(
              padding: EdgeInsets.only(left: 10.0, right: 10.0),
              child: Center(
                child: Text('Ia title/no. de dongja :(',
                    textAlign: TextAlign.center,style: TextStyle(
                  fontSize: 16.0,
                )),
              ),
            ),
            filter: (words) => [
              words.name,
              words.number.toString(),
            ],
            builder: (words) => Card(
              child: ListTile(
                title: Text(words.name,),
                trailing: Text('No. ${words.number.toString()}',),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return  WordsScreen(num:words.number);
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