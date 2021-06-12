import 'package:flutter/material.dart';

class PasswordFormField extends StatefulWidget {
  final TextEditingController controller;

  const PasswordFormField({
    Key key,
    @required this.controller,
  }) : assert(controller != null),
  super(key: key);

  @override
  _PasswordFormFieldState createState() => _PasswordFormFieldState();
}

class _PasswordFormFieldState extends State<PasswordFormField> {
  bool _showPassword = false;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10,0,0,0),
      child: TextFormField(
        controller: widget.controller,
        decoration: InputDecoration(
          border: InputBorder.none,
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
            return "Please can't be empty";
          }else if(!RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{9,}$').hasMatch(value)){
            return "Please follow the Complexity requirement!";
          }else{
            return null;
          }
        },
      ),
    );
  }
}
