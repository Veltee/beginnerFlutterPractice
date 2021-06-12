import 'package:flutter/material.dart';
import 'package:flutterassignment/password_input.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'page3.dart';
import 'page0test.dart';


// ignore: camel_case_types
class pagemini1 extends StatefulWidget {
  pagemini1({
    Key key,
  }) : super(key: key);

  @override
  _pagemini1State createState() => _pagemini1State();
  Function onPressedFunction;

}


// ignore: camel_case_types
class _pagemini1State extends State<pagemini1> with SingleTickerProviderStateMixin {
  PageController _pageController = new PageController();
  ScrollController c;
  GlobalKey<FormState> Gkey = GlobalKey<FormState>();
  final controller = PageController(viewportFraction: 0.8);

  String password1;

  final TextEditingController _passwordController = TextEditingController();

  var textInput = TextEditingController();

  @override
  void dispose(){
    _passwordController.dispose();
    super.dispose();
  }

  String dropDownValue;
  String holder = "";

  void getDropDownItem(){
    setState(() {
      holder = dropDownValue;
    });
  }

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
    anicon = AnimationController(vsync: this, duration: Duration(milliseconds: 340));
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

  AnimationController anicon;
  bool isPlaying = false;

  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay(hour: 00, minute: 00);



  void handleOP(){
    setState(() {
      isPlaying = !isPlaying;
      isPlaying
          ? anicon.forward()
          : anicon.reverse();
    });
  }

  _selectDate (BuildContext context)async{
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
      initialEntryMode: DatePickerEntryMode.input,
    );
    if(picked != null && picked!= selectedDate){
      setState(() {
        selectedDate = picked;
      });
    }
  }

  _selectTime(BuildContext context) async {
    final TimeOfDay picked_s = await showTimePicker(
      context: context,
      initialTime: selectedTime,
      builder: (BuildContext context, Widget child){
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: false),
          child: child,
        );
      },
    );
    if (picked_s != null)
      setState(() {
        selectedTime = picked_s;
      });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Create Account'),
      ),
      body: Stack(
        children: [
          Form(
            key: Gkey,
            child: PageView(
              controller: _pageController,
              physics:new NeverScrollableScrollPhysics(),
              children: [
                Scaffold(
                  body: Container(
                    color: Colors.blueAccent,
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 60,),
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
                        Card(
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
                      ],
                    ),

                  ),
                ), //Page1.dart COPAS
                Scaffold(
                  backgroundColor: Colors.blueAccent,
                  body: Container(
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20,20,20,1.8),
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
                            SizedBox(height: 30,),
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
                            SizedBox(height: 20,),
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
                                        child: Text(value),
                                      );
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
                            SizedBox(height: 20,),
                            Card(
                              elevation: 1,
                              margin: EdgeInsets.only(bottom: 3),
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
                                          child: Text(value),
                                        );
                                      }).toList(),
                                      onChanged: (value) =>
                                        setState(() => piker3 = value),
                                      validator: (value) => value == null? 'Please choose your monthly expenses': null,
                                      hint: Align(
                                        alignment: Alignment.centerRight,
                                        child: Text(
                                          'Monthly Expenses',
                                          style: TextStyle(
                                            color: Colors.grey[800],
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
                          ],
                        ),
                      ),
                    ),
                  ),
                ), //Page 2.dart COPAS
                Scaffold(
                  backgroundColor: Colors.blueAccent,
                  body: Container(
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                padding: EdgeInsets.only(top: 50),
                                child: IconButton(
                                  iconSize: 100,
                                  splashColor: Colors.white,
                                  icon: AnimatedIcon(
                                    icon: AnimatedIcons.event_add,
                                    progress: anicon,
                                    color: Colors.white,
                                  ),
                                  onPressed: ()=> handleOP(),
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 10,),
                          Text(
                            'Schedule Video Call',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text(
                            'Choose the date and time that you preferred. We will send a link via email to make a video call on the scheduled date and time',
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 20,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Card(
                                color: Colors.white,
                                child:
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text(
                                        "${selectedDate.toLocal()}".split(' ')[0],
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.blueAccent
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
                                          TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.bold),
                                        ),
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Card(
                                color: Colors.white,
                                child:
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child:
                                      Text(
                                        "$selectedTime".split(' ')[0],
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.blueAccent
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: RaisedButton(
                                        onPressed: ()=> _selectTime(context),
                                        child: Text(
                                          'Select Time',
                                          style:
                                          TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.bold),
                                        ),
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ), //page3.dart COPAS
                Scaffold(
                  backgroundColor: Colors.blueAccent,
                  body: Container(
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Thank You",
                                style: TextStyle(
                                  fontSize: 50,
                                  fontFamily: 'OpenSans',
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                )

              ],
            ),
          ),
          Column(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                child: Center(
                  child: SmoothPageIndicator(
                      controller: _pageController,
                      count: 4,
                      effect: SlideEffect(
                        spacing: 40,
                        radius: 50,
                        dotHeight: 50,
                        dotWidth: 50,
                        dotColor: Colors.black54,
                        activeDotColor: Colors.white,
                        strokeWidth: 2,

                      ),
                      onDotClicked: (index) => _pageController.animateToPage(index, duration: Duration(milliseconds:500), curve: Curves.bounceOut)
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: ButtonTheme(
                      minWidth: double.infinity,
                      height: 60,
                      child: RaisedButton(
                        color: Colors.blueAccent[100],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        onPressed: (){
                          if(Gkey.currentState.validate()){
                            _pageController.nextPage(duration: Duration(milliseconds: 500), curve: Curves.bounceOut);
                            FocusScope.of(context).unfocus(); //unfocus keyboard
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
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class ListItem {
  int value;
  String name;

  ListItem(this.value, this.name);
}

