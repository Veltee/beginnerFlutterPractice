// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return MaterialApp(
      // title: 'Welcome to Flutter',
      // home: Scaffold(
      title: 'Startup Name Generator',
      home: RandomWords(),
      // appBar: AppBar(
      //   title: Text('Welcome to Flutter'),
      // ),
      // body: Center(

      //child: Text('Hello World'),
      //child: Text(wordPair.asPascalCase),
      // child:
      //     RandomWords(),
      //^this replace the line before by adding stateful widget (2 class)
      //),
      //),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  @override
  final _suggestions = <WordPair>[];
  final _biggerFont = TextStyle(fontSize: 18.0);

  Widget _buildSuggestions() {
    return ListView.builder(
        padding: EdgeInsets.all(16.0),
        itemBuilder: /*1*/ (context, i) {
          if (i.isOdd) return Divider(); /*2*/

          final index = i ~/ 2; /*3*/
          if (index >= _suggestions.length) {
            _suggestions.addAll(generateWordPairs().take(10)); /*4*/
          }
          return _buildRow(_suggestions[index]);
        });
  }
/*
1.  The itemBuilder callback is called once per suggested word pairing, and places each suggestion into a ListTile row. 
    For even rows, the function adds a ListTile row for the word pairing. For odd rows, the function adds a Divider widget to visually separate the entries. 
    Note that the divider might be difficult to see on smaller devices.
2.  Add a one-pixel-high divider widget before each row in the ListView.
3.  The expression i ~/ 2 divides i by 2 and returns an integer result. 
    For example: 1, 2, 3, 4, 5 becomes 0, 1, 1, 2, 2. This calculates the actual number of word pairings in the ListView, minus the divider widgets.
4.  If you’ve reached the end of the available word pairings, then generate 10 more and add them to the suggestions list.
*/

  Widget _buildRow(WordPair pair) {
    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
    );
  }

  /*
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return Text(wordPair.asPascalCase);
  }
  */
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Startup Name Generator'),
      ),
      body: _buildSuggestions(),
    );
  }
}
