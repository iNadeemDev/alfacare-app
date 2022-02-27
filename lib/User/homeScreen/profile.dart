//import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'userAppBar.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  //final _auth = FirebaseAuth.instance;
  //CollectionReference users = FirebaseFirestore.instance.collection('users');

  //form key
  final _profileformKey = GlobalKey<FormState>();

  //editing controllers
  final TextEditingController nameController = new TextEditingController();
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController phoneController = new TextEditingController();
  final TextEditingController genderController = new TextEditingController();
  String gender = "Male";

  @override
  Widget build(BuildContext context) {
    //name input field
    final nameField = TextFormField(
      controller: nameController,
      decoration: const InputDecoration(
          labelText: 'Name',
          suffixIcon: Icon(Icons.person, color: Colors.pink)),
      //maxLength: 10,
      validator: (String? value) {
        if (value == null || value.isEmpty) {
          return 'Please enter name';
        }
        return null;
      },
      onSaved: (value) {
        nameController.text = value!;
      },
      textInputAction: TextInputAction.next,
    );

    //email input field
    final emailField = TextFormField(
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
          labelText: 'Email',
          suffixIcon: Icon(
            Icons.mail,
            color: Colors.pink,
          )),
      validator: (String? value) {
        /*if (value.isEmpty) {
          return 'Email is Required';
        }*/
        if (value == null || value.isEmpty) {
          return 'Please enter email';
        }

        if (!RegExp(
                r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
            .hasMatch(value)) {
          return 'Please enter a valid email Address';
        }

        return null;
      },
      onSaved: (value) {
        emailController.text = value!;
      },
      textInputAction: TextInputAction.next,
    );

    //phone no input field
    final phoneField = TextFormField(
      controller: phoneController,
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(
          labelText: 'Mobile',
          suffixIcon: Icon(Icons.phone, color: Colors.pink)),
      //maxLength: 10,
      validator: (String? value) {
        if (value == null || value.isEmpty) {
          return 'Please enter phone no';
        }
        return null;
      },
      onSaved: (value) {
        phoneController.text = value!;
      },
      textInputAction: TextInputAction.next,
    );

    final genderField = DropdownButtonFormField<String>(
      //value: gender,

      decoration: const InputDecoration(
        label: Text(
          'Gender',
          style: TextStyle(
            //fontSize: 18,
            height: 0.5,
          ),
        ),
      ),

      icon: const Icon(
        Icons.arrow_downward,
        color: Colors.pink,
        size: 30,
      ),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      onChanged: (String? newValue) {
        setState(() {
          gender = newValue!;
        });
      },

      items: <String>['Male', 'Female', 'Other']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );

    // submit button to edit profile
    final editProfileBtn = ElevatedButton(
      child: const Padding(
        padding: EdgeInsets.all(10.0),
        child: Text(
          'Edit Profile',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            letterSpacing: 1.5,
          ),
        ),
      ),
      style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  side: const BorderSide(color: Colors.red)))),
      onPressed: () {
        //Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Welcome()));
        // Validate returns true if the form is valid, or false otherwise.
        // if (_profileformKey.currentState!.validate()) {
        //   // If the form is valid, display a snackbar. In the real world,
        //   // you'd often call a server or save the information in a database.
        //   _profileformKey.currentState!.save();
        //   //Testing the values, can be sent to API

        //   addUser(nameController.text, emailController.text,
        //       phoneController.text, gender);
        //   print(nameController.text);

        //   ///print(_email);
        //   print(emailController.text);
        //   //print(_phone);;
        //   print(phoneController.text);
        //   print(gender);

        //   ///clearText();
        //   ScaffoldMessenger.of(context).showSnackBar(
        //     const SnackBar(content: Text('Processing Data')),
        //   );
        // }
      },
    );

    return Scaffold(
      appBar:AppBar(
        title: const Text('Edit Your Profile'),
        centerTitle: true,
        backgroundColor: Colors.purple[900],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                //color: Colors.blue[100], //color cannot be used along with decoration
                //height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                    //color: Colors.red,
                    image: DecorationImage(
                  image: const AssetImage('assets/jason.jpg'),
                  fit: BoxFit
                      .cover, //colorFilter: ColorFilter.mode(Colors.blue.withOpacity(0.6),
                  colorFilter: ColorFilter.mode(
                      Colors.blue.withOpacity(0.4),
                      BlendMode
                          .dstATop), //                                                 BlendMode.srcOver)
                )),
                child: Column(
                  children: const [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 16, 0, 8),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://thumbs.dreamstime.com/b/user-icon-vector-male-person-symbol-profile-circle-avatar-sign-user-icon-vector-male-person-symbol-profile-circle-avatar-sign-115922550.jpg'),
                        maxRadius: 50,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 16),
                      child: Text(
                        'Mohammed Nadeem',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Form(
                  key: _profileformKey,
                  child: Column(
                    children: [
                      nameField,
                      const SizedBox(
                        height: 20,
                      ),
                      emailField,
                      const SizedBox(
                        height: 20,
                      ),
                      phoneField,
                      const SizedBox(
                        height: 20,
                      ),
                      genderField,
                      const SizedBox(
                        height: 30,
                      ),
                      editProfileBtn,
                    ],
                  ),
                ),
                // edit form ends here
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Adding new user to the database

  // Future<void> addUser(name, email, phone, gender) {
  //   // Call the user's CollectionReference to add a new user
  //   return users
  //       .add({
  //         'name': name,
  //         'email': email,
  //         'phone': phone,
  //         'gender': gender,
  //       })
  //       .then((value) => print("User Added"))
  //       .catchError((error) => print("Failed to add user: $error"));
  // }
}
