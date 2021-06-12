import 'package:flutter/material.dart';
import 'pagemini1.dart';

class page0 extends StatefulWidget {
  @override
  _page0State createState() => _page0State();
}

class _page0State extends State<page0> {
  String email1;

  final GlobalKey<FormState> Gkey = new GlobalKey<FormState>();

  TextEditingController _email = TextEditingController();

  void validate(){
    if(Gkey.currentState.validate()){
      print("Validated");
    }else{
      print("Not Validated");
    }
  }


  @override
    Widget build(BuildContext context){
      return Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/blue_w.jpg'),
              fit: BoxFit.fill,
            ),
          ),
          padding: EdgeInsets.fromLTRB(10, 10, 10, 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 115,),
              // Center(
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //     children: [
              //       CircleAvatar(
              //         radius: 35,
              //         backgroundColor: Colors.grey,
              //       ),
              //       CircleAvatar(
              //         radius: 35,
              //         backgroundColor: Colors.grey,
              //       ),
              //       CircleAvatar(
              //         radius: 35,
              //         backgroundColor: Colors.grey,
              //       ),
              //       CircleAvatar(
              //         radius: 35,
              //         backgroundColor: Colors.grey,
              //       ),
              //     ],
              //   ),
              // ),
              SizedBox(height: 50,),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Welcome to \nGIN ',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                        letterSpacing: 1,
                      ),
                    ),
                    TextSpan(
                      text: 'Finans',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        letterSpacing: 1,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Text(
                'Welcome to The Bank of The Future.\nManage and track your accounts on the go.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  wordSpacing: 1,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 35,),
              Form(
                key: Gkey,
                child: Container(
                  padding: EdgeInsets.fromLTRB(10, 25, 10, 10),
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: new InputDecoration(
                      // fillColor: Colors.red[200],
                      // filled: true,
                      isCollapsed: true,
                      // helperText: ' ',
                      errorStyle: TextStyle(
                        fontSize: 12,
                      ),
                      border: InputBorder.none,
                      icon: Icon(Icons.mail_outline),
                      hintText: 'Email',
                      ),
                    validator: (String value){
                      if(value.isEmpty){
                        return "Please enter your email!";
                      }else if(!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value)){
                        return "Please enter a valid email!";
                      }
                    },
                    onSaved: (String _emaile){
                      email1 = _emaile;
                    },
                  ),
                  ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: ButtonTheme(
                    minWidth: double.infinity,
                    height: 60,
                    child: RaisedButton(
                      onPressed: (){
                        if (Gkey.currentState.validate()){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => pagemini1()));
                        }else{
                          print("Please enter mail!"); //print to console
                        }
                      },
                      child: const Text(
                          'Next',
                          style: TextStyle(fontSize: 20)
                      ),
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      elevation: 2,
                    ),
                  ),
                ),
              ),
            ],

          ),
        ),
      );
  }
}