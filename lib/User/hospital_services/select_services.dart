import 'package:alfacare/User/hospital_services/rep_call.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class SelectServices extends StatefulWidget {
  const SelectServices({Key? key}) : super(key: key);

  @override
  _SelectServicesState createState() => _SelectServicesState();
}

class _SelectServicesState extends State<SelectServices> {

  TextEditingController textarea = TextEditingController();

  @override
  Widget build(BuildContext context) {

    String service = 'Select Service';
    final dropdown = DropdownButtonFormField<String>(
      value: service,
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
          service = newValue!;
        });
      },
      items: <String>['Select Service','Home Ambulance Service','Home care of Elderly patient',
        'Home Digital X-Ray','Home Doppler Service','Home ECG','Home GP visit','Home Nursing care']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );

    final ServiceButton = Material(
      elevation: 10,
      color: Colors.purple.shade900,
      borderRadius: BorderRadius.circular(25),
      child: MaterialButton(
        padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
        //minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const Call()));
        },
        child: const Text(
          'Submit',
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
        title: const Text('Select Services'),
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
                padding: EdgeInsets.all(20),
                child: dropdown,
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(20,0,20,0),
                  child: Text(
                      'Add Comments',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                  ),
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                  child: TextField(
                  controller: textarea,
                  keyboardType: TextInputType.multiline,
                  maxLines: 5,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.pink.shade900)
                    )
                ),

              ),
              ),

              Padding(
                  padding: EdgeInsets.all(30),
                  child: Center(
                    child: ServiceButton,
                  )
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 10, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      'By placing your order, Our Customer Service \n Representative will call you shortly to customize the\n service for you.',
                      style: TextStyle(fontSize: 13, color: Colors.black,),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),

              ),


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
