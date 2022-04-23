import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

import 'about-us.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Terms(),
));

final String= '''By accessing and using AlphaCare platform,
You agree to be bound by these Terms.terms and conditions are vital to the long-term success and security of your online business,as they outline the rules by which you and your users must abide. Without terms.
you could be subject to abusive users, intellectual property theft, and unnecessary litigation.
\nTerms and conditions allow you to establish what constitutes appropriate activity on your site or app, so you can remove abusive users and content that violates your guidelines.
\nAsserting your claim to the creative assets of your site in your terms and conditions will prevent ownership disputes and copyright infringement.
\nIf a user lodges a legal complaint against your business, showing that they were presented with clear terms and conditions before they used your site will help you immensely in court.
\nYou agree to be bound by these Terms.terms and conditions are vital to the long-term success and security of your online business,as they outline the rules by which you and your users must abide. Without terms.
you could be subject to abusive users, intellectual property theft, and unnecessary litigation.
\nTerms and conditions allow you to establish what constitutes appropriate activity on your site or app, so you can remove abusive users and content that violates your guidelines.
\nAsserting your claim to the creative assets of your site in your terms and conditions will prevent ownership disputes and copyright infringement.
\nIf a user lodges a legal complaint against your business, showing that they were presented with clear terms and conditions before they used your site will help you immensely in court.


''';

class Terms extends StatefulWidget {
  @override
  State createState() => _State();
}

class _State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

        backgroundColor: Colors.purple[900],
        title: Text('Terms and Conditions'),
    leading: IconButton(
    icon: Icon(Icons.arrow_back),
    color: Colors.white,
    onPressed: () {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => about_us()));
    }
    ),
    ),
    body: SingleChildScrollView(

    child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
      SizedBox(

        height: 15,
      ),

        Padding(
        padding: EdgeInsets.only(right: 110.0),


        child:

        Text(
        'Terms & Conditions',
        textAlign: TextAlign.left,
        style: TextStyle(
        fontSize: 25.0,
        color: Colors.purple[900],
        fontWeight: FontWeight.w600,
        ),
        ),

        ),
          SizedBox(

            height: 15,
          ),

          Padding(
            padding: EdgeInsets.only(left: 30.0,right:50.0),
            child:
              Text(
                String,
                overflow: TextOverflow.ellipsis,
                maxLines: 100,
               style:TextStyle( fontSize: 16.0,),
              ),
          ),
            ]
          )
          ),
    );


  }
}