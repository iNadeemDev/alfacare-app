import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class DoctorProfile extends StatefulWidget {
  const DoctorProfile({Key? key}) : super(key: key);

  @override
  State<DoctorProfile> createState() => _DoctorProfileState();
}

class _DoctorProfileState extends State<DoctorProfile> {
  late bool showBorder = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Find a Doctor')),
        backgroundColor: Colors.purple.shade900,
      ),
      body: Column(
        children: [
          Container(
            height: 230,
            width: 100.w,
            color: Colors.purple.shade900,
            child: Column(
              children: const <Widget>[
                SizedBox(
                  height: 25,
                ),
                CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage('assets/img3.jpg'),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Dr Raja Mehndi Hassan',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Cardiologist(30 years of experience)',
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'MBBS,FCPS',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Container(
              width: 350,
              height: 5.h,
              decoration: BoxDecoration(
                color: Colors.grey.shade400,
                borderRadius: const BorderRadius.all(
                  Radius.circular(29.0),
                ),
              ),
              margin: const EdgeInsets.symmetric(horizontal: 60.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  DecoratedBox(
                    decoration: BoxDecoration(
                      border: showBorder
                          ? const Border(
                              bottom: BorderSide(color: Colors.white, width: 2),
                            )
                          : null,
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {},
                        onHover: (hovered) {
                          setState(() {
                            showBorder = hovered;
                          });
                        },
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const OverviewClass()),
                            );
                          },
                          child: Text(
                            'Overview',
                            style: TextStyle(
                              color: Colors.purple.shade900,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // TextButton(
                  //   child:  const Text('Overview',
                  //     style: TextStyle(
                  //       color: Colors.white,
                  //     ),),
                  //   onPressed: () {
                  //     Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //           builder: (context) => const OverviewClass()),
                  //     );
                  //   },
                  // ),
                  DecoratedBox(
                    decoration: BoxDecoration(
                      border: showBorder
                          ? const Border(
                              bottom: BorderSide(color: Colors.white, width: 2),
                            )
                          : null,
                    ),
                    child: InkWell(
                      onTap: () {},
                      onHover: (hovered) {
                        setState(() {
                          showBorder = hovered;
                        });
                      },
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AvailabiltyClass()),
                          );
                        },
                        child: Text(
                          'Availability',
                          style: TextStyle(
                            color: Colors.purple.shade900,
                          ),
                        ),
                      ),
                    ),
                  ),

                  DecoratedBox(
                    decoration: BoxDecoration(
                      border: showBorder
                          ? Border(
                              bottom: BorderSide(
                                  color: Colors.purple.shade900, width: 2),
                            )
                          : null,
                    ),
                    child: InkWell(
                      onTap: () {},
                      onHover: (hovered) {
                        setState(() {
                          showBorder = hovered;
                        });
                      },
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ReviewClass()),
                          );
                        },
                        child: Text(
                          'Review',
                          style: TextStyle(
                            color: Colors.purple.shade900,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            child: Column(
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.only(
                    left: 18.0,
                    right: 18.0,
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    child: Text(
                      'Working Time',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 0.5.h,
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    left: 18.0,
                    right: 18.0,
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    child: Text(
                      '04:00 PM-09:00 PM',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 13,
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    left: 18.0,
                    right: 18.0,
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    child: Text(
                      'About Docotr',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 0.5.h,
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    left: 18.0,
                    right: 18.0,
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    child: Text(
                      'Dr. RajaMehdi is a senior consultant cardiologist at Benazir Bhutto Hospital. He has more than 30 years of work experience as a cardiologist at renowned hospitals.',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class OverviewClass extends StatelessWidget {
  const OverviewClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
    );
  }
}

class AvailabiltyClass extends StatelessWidget {
  const AvailabiltyClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
    );
  }
}

class ReviewClass extends StatelessWidget {
  const ReviewClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
    );
  }
}

// import 'package:flutter/material.dart';
//
// class SecondClass extends StatelessWidget {
//   const SecondClass({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
