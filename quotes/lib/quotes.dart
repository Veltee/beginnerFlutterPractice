class Quote{

  String text;
  String author;

  Quote({ this.text, this.author });

}
//using text: and author: specify the name so it can even goes author: first, rather than text: first.
Quote myquote = Quote(text: 'this is the quote text', author: 'Oscard Wilde');


// This is an old way / more inefficient way
// class Quote{
//
//   String text;
//   String author;
//
//   Quote(String text, String author){
//     this.text = text;
//     this.author /*this is author from outside this constructor*/ = author;
//   }
//
// }
//
// Quote myquote = Quote('this is the quote text', 'oscar wude');