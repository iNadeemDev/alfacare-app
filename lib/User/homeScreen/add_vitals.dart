import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'text_fields.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/services.dart';

class AddVitals extends StatefulWidget {
  AddVitals({Key? key}) : super(key: key);

  @override
  State<AddVitals> createState() => _AddVitalsState();
}

class _AddVitalsState extends State<AddVitals> {
  final _formKey = GlobalKey<FormState>();
  final bP = TextEditingController();
  final pulse = TextEditingController();
  final temp = TextEditingController();
  final rSugar = TextEditingController();
  final weight = TextEditingController();
  final height = TextEditingController();
  final fSugar = TextEditingController();
  final breathing = TextEditingController();
  final oxygen = TextEditingController();
  String password = '';
  bool isPasswordVisible = false;

  @override
  void initState() {
    super.initState();
    bP.addListener(() => setState(() {}));
    pulse.addListener(() => setState(() {}));
    temp.addListener(() => setState(() {}));
    rSugar.addListener(() => setState(() {}));
    weight.addListener(() => setState(() {}));
    height.addListener(() => setState(() {}));
    fSugar.addListener(() => setState(() {}));
    breathing.addListener(() => setState(() {}));
    oxygen.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    bP.dispose();
    pulse.dispose();
    temp.dispose();
    rSugar.dispose();
    weight.dispose();
    height.dispose();
    fSugar.dispose();
    breathing.dispose();
    oxygen.dispose();
    super.dispose();
  }

  @override

  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextBox(
              controller1: bP,
              controller2: pulse,
              title1: 'Blood Pressure',
              title2: '    Pulse Rate',
            ),
            TextBox(
              controller1: temp,
              controller2: rSugar,
              title1: 'Temperature ',
              title2: '       Random sugar',
            ),
            TextBox(
              controller1: weight,
              controller2: height,
              title1: 'Weight (in kg)',
              title2: '      Height (ft)',
            ),

            TextBox(
              controller1: fSugar,
              controller2: breathing,
              title1: 'Fasting sugar',
              title2: '       Breathing rate',
            ),
            SizedBox(
              height: 2.h,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  // padding: EdgeInsets.only(left: 4.w),
                  padding: EdgeInsets.only(left:1.h,right: 1.h,top: 2.h,),
                  child: Text(
                    'Blood oxygen Saturation level',
                    style: TextStyle(
                        color: Colors.purple.shade900,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 2.w, right: 2.w),

                  child: SizedBox(
                    width: 100.w,
                    child: TextFormField(
                      controller: oxygen,
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter text';
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
                        hintStyle: TextStyle(color: Colors.purple.shade900),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget> [
                Padding(
                  padding: EdgeInsets.only(top: 2.h),
                  child: FlatButton(
                    color: Colors.purple.shade900,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.w)),
                    onPressed: (){
                          if (_formKey.currentState!.validate()) {
                             _formKey.currentState!.save();
                       }
                      print('Blood Pressure: ${bP.text}');
                      print('Pulse rate: ${pulse.text}');
                      print('Temperature: ${temp.text}');
                      print('Random sugar: ${rSugar.text}');
                      print('Weight: ${weight.text}');
                      print('Height: ${height.text}');
                      print('Fasting suagr: ${fSugar.text}');
                      print('Breathing rate: ${breathing.text}');
                      print('Oxygen: ${oxygen.text}');
                    } ,
                    child: const Text('Add Vitals',
                      style: TextStyle(color: Colors.white),
                    ),
                    // FlatButton(
                    //   onPressed: () {
                    //     setState(() {
                    //       isUpdating = false;
                    //     });
                    //     print('Blood Pressure: ${bP.text}');
                    //     print('Number: ${pulse.text}');
                    //     print('Number: ${temp.text}');
                    //     print('Number: ${rSugar.text}');
                    //     print('Number: ${weight.text}');
                    //     print('Number: ${height.text}');
                    //     print('Number: ${fSugar.text}');
                    //     print('Number: ${breathing.text}');
                    //     print('Number: ${oxygen.text}');
                    //     if (_formKey.currentState!.validate()) {
                    //       _formKey.currentState!.save();
                    //     }
                    //   }, child: Text('Cancel'),
                    // ),

                  ),
                ),
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
