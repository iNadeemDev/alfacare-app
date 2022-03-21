import 'package:alfacare/User/hospital_services/select_services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class MedicalServices extends StatefulWidget {
  const MedicalServices({Key? key}) : super(key: key);

  @override
  _MedicalServicesState createState() => _MedicalServicesState();
}

class _MedicalServicesState extends State<MedicalServices> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('E2E9E7'),
      appBar: AppBar(
        title: const Text('Home Medical Services'),
        centerTitle: true,
        backgroundColor: Colors.purple.shade900,
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart))
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(15,15,15,5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width-30,
                            height: MediaQuery.of(context).size.height*0.12,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: [
                                SizedBox(width: 12,),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(Icons.supervised_user_circle_sharp, color: Colors.purple.shade900, size: 50,)
                                  ],
                                ),
                                SizedBox(width: 15,),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    RichText(
                                      text: const TextSpan(
                                          text: 'Home ',
                                          style: TextStyle(color: Colors.black, fontSize: 18),
                                          children: <TextSpan>[
                                            TextSpan(text: ' \n Hospital Services',
                                                style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, fontSize: 18)
                                            )
                                          ]
                                      ),
                                    ),

                                  ],
                                ),
                                SizedBox(width: 32,),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    IconButton(
                                        onPressed: (){
                                          Navigator.push(context, MaterialPageRoute(builder: (context) => const SelectServices()));

                                        },
                                        icon: Icon(Icons.arrow_forward, size: 40,color: Colors.black,)
                                    )
                                  ],
                                )
                              ],
                            )
                          )
                        ],
                      )
                      ,
                    )
                  ],
                ),
              ),


              Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                              width: MediaQuery.of(context).size.width-30,
                              height: MediaQuery.of(context).size.height*0.12,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                children: [
                                  SizedBox(width: 12,),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Icon(Icons.medical_services, color: Colors.purple.shade900, size: 50,)
                                    ],
                                  ),
                                  SizedBox(width: 15,),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      RichText(
                                        text: const TextSpan(
                                            text: 'Medical ',
                                            style: TextStyle(color: Colors.black, fontSize: 18),
                                            children: <TextSpan>[
                                              TextSpan(text: ' \n Equipment Purchases',
                                                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, fontSize: 18)
                                              )
                                            ]
                                        ),
                                      ),

                                    ],
                                  ),
                                  //SizedBox(width: 1,),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      IconButton(
                                          onPressed: (){},
                                          icon: Icon(Icons.arrow_forward, size: 40,color: Colors.black,)
                                      )
                                    ],
                                  )
                                ],
                              )
                          )
                        ],
                      )
                      ,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: const Icon(Icons.add_call,size: 20,),
        backgroundColor: Colors.purple.shade900,
      ),
    );
  }
}
