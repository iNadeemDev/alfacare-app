import 'package:alfacare/User/doctors/doctor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:hexcolor/hexcolor.dart';

class Doctor extends StatefulWidget {
  const Doctor({Key? key}) : super(key: key);

  @override
  _DoctorState createState() => _DoctorState();
}

class _DoctorState extends State<Doctor> {
  var length = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Find a Doctor',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.normal,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Search for Doctor',
                    hintText: 'Search for Doctor',
                    suffixIcon: Icon(
                      Icons.search,
                      size: 20,
                    )),
              ),
            ),
            Expanded(
                child: Container(
              color: HexColor("#E7E9EB"),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                          text: const TextSpan(
                              text: 'Selected Category: ',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                              children: <TextSpan>[
                                TextSpan(
                                    text: ' Cardiologist',
                                    style: TextStyle(
                                        color: Colors.purple, fontSize: 20))
                              ]),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      child: ListView.builder(
                          itemCount: length.toInt(),
                          itemBuilder: (_, i) {
                            return Padding(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const DoctorProfile()));
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.fromLTRB(
                                          15, 5, 10, 15),
                                      //margin: const EdgeInsets.all(10),
                                      width: 340,
                                      height: 150,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Row(
                                        children: [
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              ClipOval(
                                                child: Image.asset(
                                                  'assets/Ameer.jpg',
                                                  width: 80,
                                                  height: 80,
                                                  fit: BoxFit.cover,
                                                ),
                                              )
                                            ],
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(10),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: const [
                                                    Icon(
                                                      Icons.circle_rounded,
                                                      size: 8,
                                                      color: Colors.green,
                                                    ),
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Text(
                                                      'Online',
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          color: Colors.green),
                                                    )
                                                  ],
                                                ),
                                                Row(
                                                  children: const [
                                                    Text(
                                                      'Dr Muhammad Ameer',
                                                      style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  children: const [
                                                    Text(
                                                      'Cardiologist',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  children: const [
                                                    Text(
                                                      '5 years of Experience',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  children: const [
                                                    Text(
                                                      'MBBS, FCPS',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(
                                                  height: 15,
                                                ),
                                                Row(
                                                  children: [
                                                    Column(
                                                      children: [
                                                        Row(
                                                          children: [
                                                            for (int i = 1;
                                                                i <= 5;
                                                                i++)
                                                              Container(
                                                                child:
                                                                    const Icon(
                                                                  Icons.star,
                                                                  size: 15,
                                                                  color: Colors
                                                                      .yellow,
                                                                ),
                                                              )
                                                          ],
                                                        )
                                                      ],
                                                    ),
                                                    const SizedBox(
                                                      width: 50,
                                                    ),
                                                    Column(
                                                      children: const [
                                                        Text(
                                                          'Rs. 1500/-',
                                                          style: TextStyle(
                                                            fontSize: 13,
                                                            color:
                                                                Colors.purple,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                      ],
                                                    )
                                                  ],
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }))
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
