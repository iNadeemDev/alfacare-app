import 'package:alfacare/User/doctors/doctors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'search.dart';
import 'package:sizer/sizer.dart';


class Specialities extends StatefulWidget {
  @override
  State createState() => _SpecialitiesState();
}

class _SpecialitiesState extends State<Specialities> {
  get child => null;

  get children => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple[900],
          title: Text('Find a Doctor'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            SizedBox(
              height: 14.0,
              //width: 200,
            ),
            Container(
                child: RichText(
                  textAlign: TextAlign.start,
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Find Doctor For You',
                          style: TextStyle(color: Colors.purple[900],
                          fontWeight: FontWeight.w500,
                            fontSize: 24.0
                          )),
                      TextSpan(
                        text: '\nBook your appointment here',
                        style: TextStyle(
                          color: Colors.grey[800]
                        )
                      )
                    ]
                  )
                // child: Text(
                //   'Find a Doctor',
                //   style: TextStyle(
                //     fontSize: .0,
                //     color: Colors.purple[900],
                //     fontWeight: FontWeight.w500,
                //   ),
                )),
            // Text(
            //   'Book your appointment',
            //   style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400),
            // ),
            Container(
                height: 45.0,
                margin:
                    EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
                padding: EdgeInsets.all(0.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    new BoxShadow(
                      color: Colors.white,
                      offset: new Offset(4.0, 4.0),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 17.0,
                    ),
                    Text("Search For a Doctor Here"),
                    SizedBox(
                      width: 150.0,
                    ),
                    IconButton(
                      onPressed: () =>
                          showSearch(context: context, delegate: Search()),
                      icon: Icon(Icons.search),
                    )
                  ],
                )),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  color: Colors.blue[50],
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Doctor()));
                        },
                        child: Container(
                          decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 0.15,
                                color: Colors.black12,
                              )
                            ],
                          ),
                          width: 390,
                          height: 65,
                          padding: new EdgeInsets.all(1.0),
                          margin: EdgeInsets.only(
                            top: 2.0,
                          ),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            color: Colors.white,
                            // elevation: 30,
                            child: Row(
                              children: [
                                IconButton(
                                  onPressed: () {/* ... */},
                                  icon: Icon(
                                    Icons.medication,
                                    color: Colors.purple[900],
                                  ),
                                ),
                                Text('General Practitioners'),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(left: 1.h),
                            child: Container(
                              width: 200,
                              height: 75,
                              padding: new EdgeInsets.all(7.0),
                              margin: EdgeInsets.only(
                                top: 2.0,
                              ),
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                color: Colors.white,
                                elevation: 10.0,
                                child: Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {/* ... */},
                                      icon: Icon(
                                        Icons.medication,
                                        color: Colors.purple[900],
                                      ),
                                    ),
                                    Text('Cardiologist'),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 200,
                            height: 75,
                            padding: new EdgeInsets.all(7.0),
                            margin: EdgeInsets.only(top: 2.0, left: 0.0),
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              color: Colors.white,
                              elevation: 10,
                              child: Row(
                                children: [
                                  IconButton(
                                    onPressed: () {/* ... */},
                                    icon: Icon(
                                      Icons.medication,
                                      color: Colors.pink[200],
                                    ),
                                  ),
                                  Text('Physchologist'),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(left: 1.h),
                            child: Container(
                              width: 200,
                              height: 75,
                              padding: new EdgeInsets.all(7.0),
                              margin: const EdgeInsets.only(
                                top: 2.0,
                              ),
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                color: Colors.white,
                                elevation: 10,
                                child: Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {/* ... */},
                                      icon: Icon(
                                        Icons.medication,
                                        color: Colors.orange[300],
                                      ),
                                    ),
                                    Text('ENT Specialist'),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 200,
                            height: 75,
                            padding: new EdgeInsets.all(7.0),
                            margin: EdgeInsets.only(top: 2.0, left: 0.0),
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              color: Colors.white,
                              elevation: 10,
                              child: Row(
                                children: [
                                  IconButton(
                                    onPressed: () {/* ... */},
                                    icon: Icon(
                                      Icons.medication,
                                      color: Colors.blue[200],
                                    ),
                                  ),
                                  Text('Dermatologist'),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(left: 1.h),
                            child: Container(
                              width: 200,
                              height: 75,
                              padding: new EdgeInsets.all(7.0),
                              margin: EdgeInsets.only(
                                top: 2.0,
                              ),
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                color: Colors.white,
                                elevation: 10,
                                child: Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {/* ... */},
                                      icon: Icon(
                                        Icons.medication,
                                        color: Colors.purple[100],
                                      ),
                                    ),
                                    Text('Endocrinologist'),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 200,
                            height: 75,
                            padding: new EdgeInsets.all(7.0),
                            margin: EdgeInsets.only(top: 2.0, left: 0.0),
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              color: Colors.white,
                              elevation: 10,
                              child: Row(
                                children: [
                                  IconButton(
                                    onPressed: () {/* ... */},
                                    icon: Icon(
                                      Icons.medication,
                                      color: Colors.yellow[400],
                                    ),
                                  ),
                                  Text('Skin Surgeon'),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(left: 1.h),
                            child: Container(
                              width: 200,
                              height: 75,
                              padding: new EdgeInsets.all(7.0),
                              margin: EdgeInsets.only(
                                top: 2.0,
                              ),
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                color: Colors.white,
                                elevation: 10,
                                child: Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {/* ... */},
                                      icon: Icon(
                                        Icons.medication,
                                        color: Colors.blue[600],
                                      ),
                                    ),
                                    Text('Eye Spcialist'),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 200,
                            height: 75,
                            padding: new EdgeInsets.all(7.0),
                            margin: EdgeInsets.only(top: 2.0, left: 0.0),
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              color: Colors.white,
                              elevation: 10,
                              child: Row(
                                children: [
                                  IconButton(
                                    onPressed: () {/* ... */},
                                    icon: Icon(
                                      Icons.medication,
                                      color: Colors.orange[600],
                                    ),
                                  ),
                                  Text('Neuro Surgeon'),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(left: 1.h),
                            child: Container(
                              width: 200,
                              height: 75,
                              padding: new EdgeInsets.all(7.0),
                              margin: EdgeInsets.only(
                                top: 2.0,
                              ),
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                color: Colors.white,
                                elevation: 10,
                                child: Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {/* ... */},
                                      icon: Icon(
                                        Icons.medication,
                                        color: Colors.purple[600],
                                      ),
                                    ),
                                    Text('Family Physician'),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 200,
                            height: 75,
                            padding: new EdgeInsets.all(7.0),
                            margin: EdgeInsets.only(top: 2.0, left: 0.0),
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              color: Colors.white,
                              elevation: 10,
                              child: Row(
                                children: [
                                  IconButton(
                                    onPressed: () {/* ... */},
                                    icon: Icon(
                                      Icons.medication,
                                      color: Colors.green[200],
                                    ),
                                  ),
                                  Text('Heart Surgeon'),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),

                      Row(
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(left: 1.h),
                            child: Container(
                              width: 200,
                              height: 75,
                              padding: new EdgeInsets.all(7.0),
                              margin: EdgeInsets.only(
                                top: 2.0,
                              ),
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                color: Colors.white,
                                elevation: 10,
                                child: Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {/* ... */},
                                      icon: Icon(
                                        Icons.medication,
                                        color: Colors.purple[600],
                                      ),
                                    ),
                                    Text('Family Physician'),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 200,
                            height: 75,
                            padding: new EdgeInsets.all(7.0),
                            margin: EdgeInsets.only(top: 2.0, left: 0.0),
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              color: Colors.white,
                              elevation: 10,
                              child: Row(
                                children: [
                                  IconButton(
                                    onPressed: () {/* ... */},
                                    icon: Icon(
                                      Icons.medication,
                                      color: Colors.green[200],
                                    ),
                                  ),
                                  Text('Heart Surgeon'),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),

                      Row(
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(left: 1.h),
                            child: Container(
                              width: 200,
                              height: 75,
                              padding: new EdgeInsets.all(7.0),
                              margin: EdgeInsets.only(
                                top: 2.0,
                              ),
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                color: Colors.white,
                                elevation: 10,
                                child: Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {/* ... */},
                                      icon: Icon(
                                        Icons.medication,
                                        color: Colors.purple[600],
                                      ),
                                    ),
                                    Text('Family Physician'),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 200,
                            height: 75,
                            padding: new EdgeInsets.all(7.0),
                            margin: EdgeInsets.only(top: 2.0, left: 0.0),
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              color: Colors.white,
                              elevation: 10,
                              child: Row(
                                children: [
                                  IconButton(
                                    onPressed: () {/* ... */},
                                    icon: Icon(
                                      Icons.medication,
                                      color: Colors.green[200],
                                    ),
                                  ),
                                  Text('Heart Surgeon'),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),

                      Row(
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(left: 1.h),
                            child: Container(
                              width: 200,
                              height: 75,
                              padding: new EdgeInsets.all(7.0),
                              margin: EdgeInsets.only(
                                top: 2.0,
                              ),
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                color: Colors.white,
                                elevation: 10,
                                child: Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {/* ... */},
                                      icon: Icon(
                                        Icons.medication,
                                        color: Colors.purple[600],
                                      ),
                                    ),
                                    Text('Family Physician'),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 200,
                            height: 75,
                            padding: new EdgeInsets.all(7.0),
                            margin: EdgeInsets.only(top: 2.0, left: 0.0),
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              color: Colors.white,
                              elevation: 10,
                              child: Row(
                                children: [
                                  IconButton(
                                    onPressed: () {/* ... */},
                                    icon: Icon(
                                      Icons.medication,
                                      color: Colors.green[200],
                                    ),
                                  ),
                                  Text('Heart Surgeon'),
                                ],
                              ),
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
        ));
  }
}
