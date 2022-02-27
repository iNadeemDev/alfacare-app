import 'package:alfacare/User/homeScreen/profile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DrawerClass extends StatelessWidget {
  const DrawerClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
              margin: EdgeInsets.zero,
              padding: EdgeInsets.zero,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill, image: AssetImage('assets/img3.jpg'))),
              child: Stack(children: <Widget>[
                Positioned(
                    bottom: 12.0,
                    left: 16.0,
                    child: Text("",
                        style: TextStyle(
                            color: Colors.purple.shade900,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500))),
              ])),
          ListTile(
            title: Row(
              children: <Widget>[
                Icon(FontAwesomeIcons.fileMedical,
                    color: Colors.purple.shade900, size: 30.0),
                const Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text(
                    'My Health Record',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                )
              ],
            ),
            // onTap: onTap,
          ),
          ListTile(
            title: Row(
              children: <Widget>[
                Icon(FontAwesomeIcons.calendarCheck,
                    color: Colors.purple.shade900, size: 30.0),
                const Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text(
                    'Appointments',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                )
              ],
            ),
            // onTap: onTap,
          ),
          ListTile(
            title: Row(
              children: <Widget>[
                Icon(FontAwesomeIcons.infoCircle,
                    color: Colors.purple.shade900, size: 30.0),
                const Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text(
                    'About us',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                )
              ],
            ),
            // onTap: onTap,
          ),
          const ListTile(
            title: Text(
              "Shop by Categories",
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
          ),
          const Divider(
            height: 0.1,
          ),
          ListTile(
            title: Row(
              children: <Widget>[
                Icon(FontAwesomeIcons.pills,
                    color: Colors.purple.shade900, size: 30.0),
                const Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text(
                    'Stomach ache',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                )
              ],
            ),
            // onTap: onTap,
          ),
          ListTile(
            title: Row(
              children: <Widget>[
                Icon(FontAwesomeIcons.thermometer,
                    color: Colors.purple.shade900, size: 30.0),
                const Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text(
                    'Fever',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                )
              ],
            ),
            // onTap: onTap,
          ),
          ListTile(
            title: Row(
              children: <Widget>[
                Icon(FontAwesomeIcons.headSideCough,
                    color: Colors.purple.shade900, size: 30.0),
                const Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text(
                    'Cough and Cold',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                )
              ],
            ),
            // onTap: onTap,
          ),
          ListTile(
            title: Row(
              children: <Widget>[
                Icon(FontAwesomeIcons.pills,
                    color: Colors.purple.shade900, size: 30.0),
                const Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text(
                    'Head ache',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                )
              ],
            ),
            // onTap: onTap,
          ),
          ListTile(
            title: Row(
              children: <Widget>[
                Icon(FontAwesomeIcons.virus,
                    color: Colors.purple.shade900, size: 30.0),
                const Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text(
                    'Viral',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                )
              ],
            ),
            // onTap: onTap,
          ),
          const Divider(
            height: 0.1,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Profile()));
            },
            child: ListTile(
              title: Row(
                children: <Widget>[
                  Icon(FontAwesomeIcons.ellipsisH,
                      color: Colors.purple.shade900, size: 30.0),
                  const Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Text(
                      'Other Categories',
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  )
                ],
              ),
              // onTap: onTap,
            ),
          ),
          const Divider(
            height: 0.1,
          ),
          ListTile(
            title: const Text('Version: 1.6.12 Build:73'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
