import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/services.dart';

class TextBox extends StatefulWidget {
   TextBox({
    Key? key,
     this.title1,
    this.title2,
     this.controller1,
     this.controller2,

  }) : super(key: key);
  dynamic  title1;
  dynamic  title2;
   dynamic controller1;
   dynamic controller2;
  @override
  _TextBoxState createState() => _TextBoxState();
}

class _TextBoxState extends State<TextBox> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      key: _formKey,
      padding: EdgeInsets.only(left:1.h,right: 1.h,top: 3.h,),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 1.h,
              left: 2.w,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  widget.title1,
                  style: TextStyle(
                      color: Colors.purple.shade900,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                SizedBox(
                  width: 20.w,
                ),
                Text(
                  widget.title2,
                  style: TextStyle(
                      color: Colors.purple.shade900,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 1.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 44.w,
                child: TextFormField(
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter values';
                    }
                    return null;
                  },
                  obscureText: false,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                      const BorderSide(width: 1, color: Colors.white),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                      const BorderSide(width: 1, color: Colors.white),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    // you can change this with the top text  like you want
                    hintText: 'Please enter your',
                    hintStyle: TextStyle(color: Colors.purple.shade900,fontSize: 15),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                ),
              ),
              SizedBox(
                width: 6.w,
              ),
              SizedBox(
                width: 45.w,
                child: TextFormField(
                  controller: widget.controller2,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter values';
                    }
                    return null;
                  },
                  obscureText: false,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                      const BorderSide(width: 1, color: Colors.white),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                      const BorderSide(width: 1, color: Colors.white),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    // you can change this with the top text  like you want
                    hintText: 'Please enter your',
                    hintStyle: TextStyle(color: Colors.purple.shade900,fontSize: 15),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
