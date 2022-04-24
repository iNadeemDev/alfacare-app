import 'package:alfacare/User/homeScreen/add_vitals.dart';
import 'package:alfacare/User/homeScreen/text_fields.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ViewVitals extends StatelessWidget {
  final dynamic bp, pulse, temp, rsugar, weight, height, fsugar, breath, oxygen;
  ViewVitals({this.bp, this.temp, this.pulse, this.height, this.oxygen, this.weight, this.breath, this.fsugar, this.rsugar}) ;
  AddVitals obj=AddVitals();
  @override

  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(left: 2.h,top: 3.h,right: 2.h,bottom: 26.h),
        child: Container(
          height: 2.h,
          width: 20.w,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 3.h,top: 3.h,right: 3.h),
                    child: Title(color: Colors.purple.shade900, child: Text('Vitals')),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 24.h,top: 3.h,right: 3.h),
                    child: Title(color: Colors.purple.shade900, child: Text('Recording')),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 1.h,top: 1.h,right: 3.h),
                    child: Title(color: Colors.purple.shade900, child: Text('Blood Pressure')),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 21.5.h,top: 3.h,right: 3.h),

                    child: Text(obj.Input1),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 1.h,top: 1.h,right: 3.h),
                    child: Title(color: Colors.purple.shade900, child: Text('Pulse rate')),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25.4.h,top: 3.h,right: 3.h),
                    child: Text(obj.Input2),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 1.h,top: 1.h,right: 3.h),
                    child: Title(color: Colors.purple.shade900, child: Text('Body Temperature')),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 19.5.h,top: 3.h,right: 3.h),
                    child: Text(obj.Input3),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 1.h,top: 1.h,right: 3.h),
                    child: Title(color: Colors.purple.shade900, child: Text('Height')),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 28.5.h,top: 3.h,right: 3.h),
                    child: Text(obj.Input4),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 1.h,top: 1.h,right: 3.h),
                    child: Title(color: Colors.purple.shade900, child: Text('Weight')),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 28.25.h,top: 3.h,right: 3.h),
                    child: Text(obj.Input5),
                  ),
                ],
              ),Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 1.h,top: 1.h,right: 3.h),
                    child: Title(color: Colors.purple.shade900, child: Text('Fasting sugar')),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 23.5.h,top: 3.h,right: 3.h),
                    child: Text(obj.Input6),
                  ),
                ],
              ),Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 1.h,top: 1.h,right: 3.h),
                    child: Title(color: Colors.purple.shade900, child: Text('Regular sugar')),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 23.5.h,top: 3.h,right: 3.h),
                    child: Text(obj.Input7),
                  ),
                ],
              ),Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 1.h,top: 1.h,right: 3.h),
                    child: Title(color: Colors.purple.shade900, child: Text('Respiration rate')),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 22.5.h,top: 3.h,right: 3.h),
                    child: Text(obj.Input8),
                  ),
                ],
              ),Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 1.h,top: 1.h,right: 3.h),
                    child: Title(color: Colors.purple.shade900, child: Text('Oxygen level')),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25.h,top: 3.h,right: 3.h),
                    child: Text(obj.Input9),
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
