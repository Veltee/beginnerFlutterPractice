import 'package:flutter/material.dart';
import 'package:sachihirotest/password_input.dart';
import 'package:sachihirotest/user_model.dart';
import 'package:http/http.dart' as http;

class inputPage extends StatefulWidget {
  @override
  _inputPageState createState() => _inputPageState();
}

class _inputPageState extends State<inputPage> {

  Usermodel uuuu;
  final GlobalKey<FormState> Gkey = new GlobalKey<FormState>();

  final TextEditingController fnc = new TextEditingController();
  final TextEditingController ec = new TextEditingController();
  final TextEditingController pc = new TextEditingController();
  final TextEditingController gc = new TextEditingController();
  final TextEditingController dobc = new TextEditingController();

  DateTime selectedDate = DateTime.now();
  _selectDate (BuildContext context)async{
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(1980),
      lastDate: DateTime(2025),
      initialEntryMode: DatePickerEntryMode.input,
    );
    if(picked != null && picked!= selectedDate){
      setState(() {
        selectedDate = picked;
      });
    }
  }

  Future<Usermodel> createUser(String fullname, String email, String pass, String gen, String dob ) async{
    final String urel = "http://52.77.78.127:8002/user/create";

    final response = await http.post(Uri.parse(urel),
      body:{
        "fullname": fullname,
        "email": fullname,
        "password": fullname,
        "gender": fullname,
        "dob": fullname,
      }
    );

    if(response.statusCode == 200){
      final String responseString = response.body;

      return usermodelFromJson(responseString);
    }else return null;

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              "Form",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20,),
            Form(
              key: Gkey,
              child: Column(
                children: [
                  TextFormField(
                    keyboardType: TextInputType.name,
                    decoration: new InputDecoration(
                      errorStyle: TextStyle(
                        fontSize: 12,
                      ),
                      icon: Icon(Icons.account_circle_rounded),
                      hintText: 'Full Name',
                    ),
                    validator: (String value){
                      if(value.isEmpty){
                        return "Please enter your full name!";
                      }else if(value.length <4){
                        return "Name can't be 3 alphabet or shorter.";
                      }
                    },
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: new InputDecoration(
                      errorStyle: TextStyle(
                        fontSize: 12,
                      ),
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
                  ),
                  PasswordFormField(controller: pc,),
                  TextFormField(
                    controller: gc,
                    keyboardType: TextInputType.number,
                    decoration: new InputDecoration(
                      errorStyle: TextStyle(
                        fontSize: 12,
                      ),
                      icon: Icon(Icons.wc_sharp),
                      hintText: 'Gender: 1. Male | 2. Female',
                    ),
                    validator: (String value){
                      if(value.isEmpty){
                        return "1 for M, and 2 For F, Please enter your gender!";
                      }else{
                        return null;
                      }
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.calendar_today_sharp
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "${selectedDate.toLocal()}".split(' ')[0],
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: RaisedButton(
                          onPressed: ()=> _selectDate(context),
                          child: Text(
                            'Select date',
                            style:
                            TextStyle(color: Colors.grey[900], fontWeight: FontWeight.bold),
                          ),
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),




                  RaisedButton(
                    child: Text("submit"),
                    onPressed: ()async{
                      if(Gkey.currentState.validate()){
                         final Usermodel usee = await createUser(fnc.toString(), ec.toString(), pc.toString(), gc.toString(), dobc.toString());
                         setState(() {
                           uuuu = usee;
                         });
                      }



                    }
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
