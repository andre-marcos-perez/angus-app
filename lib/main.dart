import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Angus Home',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Angus Home')
        ),
        body: Center(
          child: RandomWords()
        ),
      ),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context){
    final wordPair = WordPair.random();
    return Text(wordPair.asPascalCase);
  }
}
