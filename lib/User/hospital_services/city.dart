import 'package:flutter/material.dart';

import 'medical_services.dart';

class City extends StatefulWidget {
  const City({Key? key}) : super(key: key);

  @override
  _CityState createState() => _CityState();
}

class _CityState extends State<City> {
  @override

  Widget build(BuildContext context) {

    String location = 'Select Location';
    final dropdown = DropdownButtonFormField<String>(
      value: location,
      //hint: const Text('Select Location'),
      autofocus: false,
      decoration: const InputDecoration(
        contentPadding: EdgeInsets.only(right: 10),
      ),
      icon: const Icon(
        Icons.arrow_drop_down,
        size: 25,
        color: Colors.purple,
      ),
      elevation: 16,
      onChanged: (String? newValue) {
        setState(() {
          location = newValue!;
        });
      },
      items: <String>['Select Location','Islamabad','Rawalpindi', 'Lahore','Karachi','Peshawar','Faisalabad','Multan']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );

    final LocationButton = Material(
      elevation: 10,
      color: Colors.purple.shade900,
      borderRadius: BorderRadius.circular(25),
      child: MaterialButton(
        padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
        //minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const MedicalServices()));
        },
        child: const Text(
          'Get Started',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('City'),
        centerTitle: true,
        backgroundColor: Colors.purple.shade900,
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart))
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.location_on, size: 50, color: Colors.purple,),
                  ],
                ),

              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(30, 5, 10, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                        'Your location is automatically set to \n Islamabad. This will impact any search\n that you can perform',
                        style: TextStyle(fontSize: 17, color: Colors.black,),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),

              ),
              Divider(
                height: 10,
              ),

              SizedBox(height: 50,),

              Padding(
                padding: EdgeInsets.all(20),
                child: dropdown,
              ),

              Padding(
                padding: EdgeInsets.all(30),
                child: Center(
                  child: LocationButton,
                )
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
