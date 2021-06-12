import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class page2 extends StatefulWidget {
  @override
  _page2State createState() => _page2State();
}

class _page2State extends State<page2> {

  final _formKey = GlobalKey<FormState>();
  bool _autovalidate = false;

  List<ListItem> piker1 = [
    ListItem(1, "Wedding Prep"),
    ListItem(2, "Deposito"),
    ListItem(3, "Investing"),
    ListItem(4, "Buy a house"),
  ];

  List<DropdownMenuItem<ListItem>> _dropdown;
  ListItem _selectedItem;

  void initState() {
    super.initState();
    _dropdown = buildDropDownMenuItems(piker1);
    // _selectedItem = _dropdown[0].value; //This is to let the first choice be default
  }

  List<DropdownMenuItem<ListItem>> buildDropDownMenuItems(List listItems){
    List<DropdownMenuItem<ListItem>> items = List();
    for (ListItem listItem in listItems) {
      items.add(
        DropdownMenuItem(
          child: Text(listItem.name),
          value: listItem,
        ),
      );
    }
    return items;
  }


  List piker2 = [
    '< 5 Mill', '5 Mill - 10 Mill', '> 10 Mill'
  ];
  String _piker2;

  List piker3 = [
    '< 5 Mill', '5 Mill - 10 Mill', '> 10 Mill'
  ];
  String _piker3, name;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 60,),
                Text(
                  'Personal Information',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  'Please fill in the information below and your goal for digital saving.',
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10,),
                Card(
                  elevation: 1,
                  margin: EdgeInsets.only(bottom: 3),
                  child: ListTile(
                    title: Text("Goal for activation"),
                    contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    trailing: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        isExpanded: false,
                        value: _selectedItem,
                        items: _dropdown,
                        onChanged: (value){
                          setState(() {
                            _selectedItem = value;
                          });
                        },
                        hint: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Choose 1',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        style: TextStyle(
                          color: Colors.black,
                          decorationColor: Colors.red,
                        ),

                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 1,
                  margin: EdgeInsets.only(bottom: 3),
                  child: ListTile(
                    title: Text("Monthly Salary"),
                    contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    trailing: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        isExpanded: false,
                        value: _piker2,
                        items: piker2.map((value){
                          return DropdownMenuItem(
                            value: value,
                            child: Text(value),);
                        }).toList(),
                        onChanged: (value){
                          setState(() {
                            _piker2 = value;
                          });
                        },
                        hint: Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            'Choose 1',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        style: TextStyle(
                          color: Colors.black,
                          decorationColor: Colors.red,
                        ),

                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 1,
                  margin: EdgeInsets.only(bottom: 3),
                  child: Form(
                      key: _formKey,
                      autovalidate: _autovalidate,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            DropdownButtonFormField(
                              isExpanded: false,
                              value: _piker3,
                              items: piker3.map((value){
                                return DropdownMenuItem(
                                  value: value,
                                  child: Text(value),);
                              }).toList(),
                              onChanged: (value){
                                setState(() {
                                  _piker3 = value;
                                });
                              },
                              hint: Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  'Choose 1',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              style: TextStyle(
                                color: Colors.black,
                                decorationColor: Colors.red,
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),


    );
  }
}

class ListItem {
  int value;
  String name;

  ListItem(this.value, this.name);
}

