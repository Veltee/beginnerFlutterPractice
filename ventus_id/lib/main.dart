import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: VentusCard(),


));

class VentusCard extends StatefulWidget {
  @override
  _VentusCardState createState() => _VentusCardState();
}

class _VentusCardState extends State<VentusCard> {

  int lvl = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            lvl += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
      ),
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Ventus ID Card'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/SENTO.jpg'),
                radius: 40,
              ),
            ),
            Divider(
              height: 50,
              color: Colors.grey,
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2,
              ),
            ),
            SizedBox(height: 5,),
            Text(
              'Velte',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2,
                fontSize: 28,
                fontWeight: FontWeight.bold,
                ),
            ),
            SizedBox(height: 30,),
            Text(
              'CURRENT LEVEL',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2,
                ),
            ),
            SizedBox(height: 5,),
            Text(
              '$lvl',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30,),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 5,),
                Text(
                  'Velte@ventus.com',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18,
                    letterSpacing: 2,
                  ),
                ),
              ],
            ),

          ],
        ),
      ),

    );
  }
}


