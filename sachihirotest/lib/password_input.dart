import 'package:flutter/material.dart';

class PasswordFormField extends StatefulWidget {
  final TextEditingController controller;
  final TextEditingController controller1;


  const PasswordFormField({
    Key key,
    @required this.controller, this.controller1
  }) : assert(controller != null),
  super(key: key);

  @override
  _PasswordFormFieldState createState() => _PasswordFormFieldState();
}

class _PasswordFormFieldState extends State<PasswordFormField> {
  bool _showPassword = false;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: widget.controller,
          decoration: InputDecoration(
            icon: Icon(Icons.lock),
            hintText: 'Password',
            suffixIcon: GestureDetector(
              onTap: (){
                setState(() {
                  _showPassword = !_showPassword;
                });
              },
              child: Icon(
                _showPassword ? Icons.visibility : Icons.visibility_off,
              ),
            )
          ),
          obscureText: !_showPassword,
          validator: (String value){
            if(value.isEmpty){
              return "Password can't be empty!";
            }else if(!RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])').hasMatch(value)){
              return "Please follow the Complexity requirement!";
            }else{
              return null;
            }
          },
        ),
        TextFormField(
          controller: widget.controller1,
          decoration: InputDecoration(
              icon: Icon(Icons.lock_outline_sharp),
              hintText: 'Password Verification',
              suffixIcon: GestureDetector(
                onTap: (){
                  setState(() {
                    _showPassword = !_showPassword;
                  });
                },
                child: Icon(
                  _showPassword ? Icons.visibility : Icons.visibility_off,
                ),
              )
          ),
          obscureText: !_showPassword,
          validator: (String value){
            if(value.isEmpty){
              return "Password Verification can't be empty!";
            }else if(!RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])').hasMatch(value)){
              return "Please follow the Complexity requirement!";
            }else{
              return null;
            }
          },
        ),
      ],
    );
  }
}
