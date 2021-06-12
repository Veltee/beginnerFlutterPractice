import 'package:flutter/material.dart';

/*
void main() {
  runApp(MyApp());
}*/

void main() => runApp(MaterialApp(
  home: Home()
));

class Home extends StatelessWidget {
  @override //redefining(override) build method instead of using the inheritance of StatelessWidget
  Widget build(BuildContext context) { //use this to hot reload instead off putitng scaffol inside home:
    return Scaffold(
      appBar: AppBar(
        title: Text('Lol u gey'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Row(
        children: <Widget>[
          Expanded(
            child: Image.asset('assets/839256.png'),
            flex: 3,
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(30),
              color: Colors.cyan,
              child: Text('1'),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(30),
              color: Colors.pink,
              child: Text('2'),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(30),
              color: Colors.amber,
              child: Text('3'),
            ),
          ),
        ],
      ),


      /*
      Column( //main axis of column is vertical, while the cross is horizontally

        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Row(
            children: [
              Text('hello'),
              Text('World'),
            ],
          ),
          Container(
            padding: EdgeInsets.all(20),
            color: Colors.cyan,
            child: Text('now what'),
          ),
          Container(
            padding: EdgeInsets.all(30),
            color: Colors.green,
            child: Text('now what 2'),
          ),
          Container(
            padding: EdgeInsets.all(40),
            color: Colors.blue,
            child: Text('now what 3'),
          ),
        ],
      ),

       */
      /*
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, //control how the widgets horizontally align
        crossAxisAlignment: CrossAxisAlignment.start, //control how the widgets vertically align (in the row)
        children: <Widget>[
          Text('hello world'),
          FlatButton(
            onPressed: (){},
            color: Colors.amber,
            child: Text('click me'),
          ),
          Container(
            color: Colors.cyan,
            padding: EdgeInsets.all(30),
            child: Text('inside container'),
          ),
        ],

      ),
      */
      /* //can't apply color or margin to padding widgets only padding itself
      Padding(
        padding: EdgeInsets.all(90),
        child: Text('oie'),
      ),*/
      /*Container(
        padding: EdgeInsets.fromLTRB(10, 20, 30, 40),
        margin: EdgeInsets.all(30),
        //symmetric(horizontal: 30, vertical: 10),
        color: Colors.grey[400],
        child: Text('hello'),
      ),*/

      /*Center(
        child: IconButton(
          onPressed: (){
            print('you clicked me!');
          },
          icon: Icon(Icons.alternate_email),
          color: Colors.amber,
        )
       */
        /*
        RaisedButton.icon(
          onPressed: (){},
          icon: Icon(
            Icons.email
          ),
          label: Text('mail me BABABOI'),
          color: Colors.amber,
        )
        */
        /*
        RaisedButton( //FlatButton is another example CTRL+Q to know what can be used on it
          onPressed: (){
            print('you click me boi');
          },
          child: Text('clikmenib'),
          color: Colors.lightBlue,
        )
        */
        /*
        Icon(
          Icons.airport_shuttle,
          color: Colors.red,
          size: 80,
        ),
        */
        //child: Image.asset('assets/839256.png'), //shortcut for image can use both local, & network
        /*
        // always add new path to pubspec
        Image(
          image: AssetImage('assets/ff330084f6932c34b9504b368b5e9c0b.jpg'), //local
          image: NetworkImage('https://www.kingdomhearts.com/unionx/wallpapers/img/01/01_iP_750_1334.jpg'),
        ),
        */
        /*Text(
          'hello kaiju-kun!',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.0,
            color: Colors.grey[500],
            fontFamily: 'IndieFlower',
          ),
        ),*/

      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Text('cuck'),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}