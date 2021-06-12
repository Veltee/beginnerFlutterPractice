import 'package:flutter/material.dart';

class page3 extends StatefulWidget {
  @override
  _page3State createState() => _page3State();
}

class _page3State extends State<page3> with SingleTickerProviderStateMixin {

  AnimationController anicon;
  bool isPlaying = false;

  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay(hour: 00, minute: 00);
  
  @override
  void initState(){
    super.initState();
    anicon = AnimationController(vsync: this, duration: Duration(milliseconds: 450));
  }

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
                            child: Text(
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
    );
  }
}
