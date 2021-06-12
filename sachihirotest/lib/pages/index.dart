import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:sachihirotest/pages/inputpage.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  List users = [];
  bool isLoading = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.fetchUser();
  }
  
  fetchUser() async{
    var url = "http://52.77.78.127:8002/user/read";
    var response = await http.post(Uri.parse(url));

    if(response.statusCode == 200){
      var items = json.decode(response.body)['data']['rows'];
      print(items);

      setState(() {
        users = items;
      });
    }else setState(() {
      users = [];
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data View'),
        leading: IconButton(
          icon: Icon(Icons.account_box_outlined),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => inputPage()));
          },
        ),

      ),
      body: getBody(),
    );
  }
  Widget getBody(){
    // List items = [
    //   "1",
    //   "2"
    // ];
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, index){
        return getCard(users[index]);
      });
  }

  Widget getCard(item){
    var fullName = item['fullname'];
    var email = item['email'];
    var gender = item['gender'];
    var dob = item['dob'];
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListTile(
          title: Row(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(60/2),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage("https://images.unsplash.com/photo-1618386230353-3631c1365be2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1055&q=80"),
                  )
                ),
              ),
              SizedBox(width: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        fullName.toString(),
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 20,),
                      Text(
                        gender.toString(),
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  SizedBox(width: 4,),
                  Text(
                    "Age: "+gender.toString(),
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 6,),
                  Text(
                    "DoB: "+dob.toString(),
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 2,),
                  Text(
                    email.toString(),
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
