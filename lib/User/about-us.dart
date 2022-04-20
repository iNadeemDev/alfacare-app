import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'video.dart';
import 'package:new_app/main.dart';
import 'Terms.dart' ;
import 'Policy.dart';

void main() => runApp( const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: about_us(),
    ));

class about_us extends StatefulWidget {
  const about_us({Key? key}) : super(key: key);
  @override
  State createState() => _State();
}

class _State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[900],
        title: Text('About Us'),
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.white,
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Find_Doctor()));
            }),
        actions: [
          IconButton(
              icon:Icon(Icons.preview),
              color: Colors.white,
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => VideoDemo()));
              }),
        ],
      ),



      backgroundColor: Colors.blue[50],
      body:

      SingleChildScrollView(
        child: Column(children: [
          Container(
            width: 325,
            height: 90,
            margin: EdgeInsets.only(top: 35.0, left: 17),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: const [
                BoxShadow(
                  blurRadius: 0.15,
                  color: Colors.white,
                )
              ],
            ),
            child: Row(
              children: [
                Column(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                  SizedBox(
                    width: 25,
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 31.0),
                    child: Text(
                      'Terms & Conditions',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.purple[900],
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 6.0,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 17),
                    width: 210,
                    child: Text(
                      "By accessing and using AlphaCare platform, You agree to be bound by these Terms.",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                    ),
                  ),
                ]),
                SizedBox(
                  width: 40,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                           context, MaterialPageRoute(builder: (context) => Terms()));
                  },
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.purple[900],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 325,
            height: 90,
            margin: EdgeInsets.only(top: 20.0, left: 17),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: const [
                BoxShadow(
                  blurRadius: 0.15,
                  color: Colors.white,
                )
              ],
            ),
            child: Row(
              children: [
                Column(children: [
                  SizedBox(
                    width: 25,
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 71.0),
                    child: Text(
                      'Privacy Policy',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.purple[900],
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 6.0,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 17),
                    width: 210,
                    child: Text(
                      "We are excited and Thankful that you are entrusting us with your personal data.",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                    ),
                  ),
                ]),
                SizedBox(
                  width: 40,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => policy()));
                  },
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.purple[900],
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}



