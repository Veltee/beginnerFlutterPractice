import 'package:flutter/cupertino.dart';
import'package:flutter/material.dart';
import 'package:flutterassignment/password_input.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'password_input.dart';
import 'page 2.dart';


class page1 extends StatefulWidget {


  page1({
    Key key,
}) : super(key: key);

  @override
  _page1State createState() => _page1State();
}

class _page1State extends State<page1> {
  final controller = PageController(viewportFraction: 0.8);

  String password1;

  final TextEditingController _passwordController = TextEditingController();

  GlobalKey<FormState> Pkey = GlobalKey<FormState>();

  @override
  void dispose(){
    _passwordController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blueAccent,
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(height: 60,),

              ],
            ),
            Text(
              'Create Password',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8,),
            Text(
              'Password will be used to login to account',
              style: TextStyle(
                fontSize: 17,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10,),
            Form(
              key: Pkey,
              child: Card(
                elevation: 8,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0 , 0, 0, 0),
                  child: Column(
                    children: [
                      PasswordFormField(
                        controller: _passwordController,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 15,),
            Column(
              children: [
                Text(
                  'Complexity:',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Center(
                    child: Text(
                      'a',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Center(
                    child: Text(
                      'A',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Center(
                    child: Text(
                      '123',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Center(
                    child: Text(
                      '9+',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Center(
                    child: Text(
                      'Lowercase',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Center(
                    child: Text(
                      'Uppercase',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Center(
                    child: Text(
                      'Numbers',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Center(
                    child: Text(
                      'Characters',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ],
            ),


            Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: ButtonTheme(
                    minWidth: double.infinity,
                    height: 60,
                    child: RaisedButton(
                      color: Colors.blueAccent[100],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      onPressed: (){
                        if(Pkey.currentState.validate()){
                          return Navigator.push(context, MaterialPageRoute(builder: (context) => page2()));
                        }else {
                          null;
                        }
                    },
                      child: Text(
                        'Next',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
            )
          ],
        ),

      ),


    );



  }
}
