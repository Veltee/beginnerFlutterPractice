import 'package:flutter/material.dart';
import 'quotes.dart';
import 'quote_card.dart';

void main() {runApp(MaterialApp(
  home: QuoteList(),

));}

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(author: 'Odafb', text: 'this is the quote text'),
    Quote(author: 'Oscard Wilde', text: 'my mom is not black'),
    Quote(author: 'Oscard Wilde', text: 'my life is over, or so you thought. sugi wa omae wa lololol'),
  ];

  //it's weird to use this to call the class down there, why not directly
  // Widget quoteTemplate(quote){
  //   return QuoteCard(quote: quote);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        //quote in Text(quote) can't run because we change the List from text into an object
        //children: quotes.map((qe) => Text('${qe.text}, by ${qe.author}')).toList(), //returning 1 line can just use =>
        children: quotes.map((qe) => QuoteCard(
          quote: qe,
          delete: (){
            setState(() {
              quotes.remove(qe);
            });
          }
        )).toList(), //returning 1 line can just use =>
      ),


    );
  }
}