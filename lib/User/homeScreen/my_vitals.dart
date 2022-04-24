import 'package:flutter/material.dart';
import 'add_vitals.dart';
import 'view_vitals.dart';
import 'package:sizer/sizer.dart';

class MyVitals extends StatelessWidget {
  const MyVitals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      DefaultTabController(
        length: 2,
        initialIndex: 0,
        child: Scaffold(
          appBar: AppBar(title: const Center(child: Text("My Vitals")),
            backgroundColor: Colors.purple.shade900,
          ),
          backgroundColor: Colors.blue.shade50,

          body:Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top:2.h,left: 12.0.w,right: 12.0.w),
                child: Container(
                  width: 60.w,
                  height: 5.h,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(29.0),
                    ),
                  ),
                  child: TabBar(
                    labelColor: Colors.purple.shade900,
                    indicatorColor: Colors.transparent,
                    labelPadding: const EdgeInsets.only(left: 5,right: 5,),
                    unselectedLabelStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                    labelStyle:TextStyle(color:Colors.purple.shade900,fontSize: 18, fontWeight: FontWeight.w700),
                    tabs: const [
                      Tab(
                        // icon: Icon(Icons.add_circle_outline_rounded),
                        text: "Add vitals",
                      ),
                      Tab(
                        // icon: Icon(Icons.add_circle_outline_rounded),
                          text: "Vital stats"),
                    ],
                  ),
                ),
              ),
              Expanded(child: TabBarView(
                  children: [
                    AddVitals(),
                    ViewVitals(),
                  ]
              )
              ),
            ],
          ),
        ),
      );
  }
}
