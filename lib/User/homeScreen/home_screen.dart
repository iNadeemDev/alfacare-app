import 'package:alfacare/User/doctors/specialities.dart';
import 'package:alfacare/User/homeScreen/card.dart';
import 'package:alfacare/User/homeScreen/carousel.dart';
import 'package:alfacare/User/homeScreen/drawer.dart';
import 'package:alfacare/User/hospital_services/city.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';

/// This Widget is the main application widget.
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return Scaffold(
        backgroundColor: Colors.blue.shade50,
        drawer: const DrawerClass(),
        // minHeight: 100,
        appBar: AppBar(
          title: const Text('Alfacare'),
          centerTitle: true,
          backgroundColor: Colors.purple.shade900,
          actions: <Widget>[
            IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart))
          ],
          // actions: const [Icon(Icons.shopping_cart)],
          toolbarHeight: 8.h,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: const [
                      CarouselCLass(),
                    ],
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 5.w, right: 5.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => Specialities()));
                          },
                          child: Container(
                            padding: EdgeInsets.fromLTRB(35, 20, 40, 35),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white,
                            ),
                            child:Column(
                              children: [
                                Icon(FontAwesomeIcons.flask),
                                SizedBox(height:5),
                                Text(
                                    'Home',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                    'Hospital',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 19,
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Icon(FontAwesomeIcons.arrowRight),
                              ],
                            )
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => Specialities()));
                          },
                          child: Container(
                              padding: EdgeInsets.fromLTRB(35, 20, 40, 35),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                color: Colors.white,
                              ),
                              child:Column(
                                children: [
                                  Icon(FontAwesomeIcons.flask),
                                  SizedBox(height:5),
                                  Text(
                                    'Online',
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                  Text(
                                    'Lab Test',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 19,
                                    ),
                                  ),
                                  SizedBox(height: 5,),
                                  Icon(FontAwesomeIcons.arrowRight),
                                ],
                              )
                          ),
                        ),
                        // MultipleSelectionCard(
                        //   icon: FontAwesomeIcons.flask,
                        //   textWid: 'Online',
                        //   textsWid: 'Lab test',
                        //   iconsWid: FontAwesomeIcons.arrowRight,
                        // ),
                        // MultipleSelectionCard(
                        //   icon: FontAwesomeIcons.prescriptionBottle,
                        //   textWid: 'Online',
                        //   textsWid: 'Pharmacy',
                        //   iconsWid: FontAwesomeIcons.arrowRight,
                        // ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),



                  Container(
                    padding: EdgeInsets.only(left: 5.w, right: 5.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => Specialities()));
                          },
                          child: Container(
                              padding: EdgeInsets.fromLTRB(35, 20, 40, 35),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.white,
                              ),
                              child:Column(
                                children: [
                                  Icon(FontAwesomeIcons.flask),
                                  SizedBox(height:5),
                                  Text(
                                    'Online',
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                  Text(
                                    'Lab Test',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 19,
                                    ),
                                  ),
                                  SizedBox(height: 5,),
                                  Icon(FontAwesomeIcons.arrowRight),
                                ],
                              )
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => Specialities()));
                          },
                          child: Container(
                              padding: EdgeInsets.fromLTRB(35, 20, 40, 35),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.white,
                              ),
                              child:Column(
                                children: [
                                  Icon(FontAwesomeIcons.flask),
                                  SizedBox(height:5),
                                  Text(
                                    'Online',
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                  Text(
                                    'Lab Test',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 19,
                                    ),
                                  ),
                                  SizedBox(height: 5,),
                                  Icon(FontAwesomeIcons.arrowRight),
                                ],
                              )
                          ),
                        ),
                        // MultipleSelectionCard(
                        //   icon: FontAwesomeIcons.flask,
                        //   textWid: 'Online',
                        //   textsWid: 'Lab test',
                        //   iconsWid: FontAwesomeIcons.arrowRight,
                        // ),
                        // MultipleSelectionCard(
                        //   icon: FontAwesomeIcons.prescriptionBottle,
                        //   textWid: 'Online',
                        //   textsWid: 'Pharmacy',
                        //   iconsWid: FontAwesomeIcons.arrowRight,
                        // ),
                      ],
                    ),
                  ),
                  // Padding(
                  //   padding: EdgeInsets.only(left: 5.w, right: 5.w),
                  //   child: Row(
                  //     children: [
                  //       MultipleSelectionCard(
                  //         icon: FontAwesomeIcons.hospitalUser,
                  //         textWid: 'Home Hospital',
                  //         textsWid: 'Services',
                  //         iconsWid: FontAwesomeIcons.arrowRight,
                  //       ),
                  //       MultipleSelectionCard(
                  //         icon: FontAwesomeIcons.mobile,
                  //         textsWid: 'On Call',
                  //         textWid: 'Doctor',
                  //         iconsWid: FontAwesomeIcons.arrowRight,
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 3.w,
                      right: 3.w,
                    ),
                    child: Card(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9)),
                      margin: EdgeInsets.all(4.w),
                      child: ListTile(
                        leading: Icon(FontAwesomeIcons.upload,
                            color: Colors.purple.shade900, size: 35.0),
                        title: const Text(
                          'Upload',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.black,
                          ),
                        ),
                        subtitle: const Text(
                          'Prescription',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        trailing: const Icon(FontAwesomeIcons.arrowRight,
                            color: Colors.black, size: 28.0),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 5.w),
                        child: GestureDetector(
                          child: CircleAvatar(
                            radius: 2.h,
                            backgroundColor: Colors.white,
                            child: Icon(
                              FontAwesomeIcons.userAlt,
                              color: Colors.purple.shade900,
                            ),
                          ),
                          onTap: () {
                            final snackBar = SnackBar(
                              content: const Text('Yay! A SnackBar!'),
                              action: SnackBarAction(
                                label: 'Undo',
                                onPressed: () {
                                  // Some code to undo the change.
                                },
                              ),
                            );
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          },
                        ),
                      ),
                    ],
                  ),
                ]),
          ),
        ),
      );
    });
  }
}
