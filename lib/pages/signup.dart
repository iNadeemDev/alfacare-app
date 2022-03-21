import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController nameController = TextEditingController();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController phoneController = TextEditingController();

  final TextEditingController genderController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final TextEditingController cpasswordController = TextEditingController();

  final GlobalKey<FormState> formkey = GlobalKey<FormState>();

// to destroy the controller after use
//   @override
  // void dispose() {
  //   // Clean up the controller when the widget is disposed.
  //   nameController.dispose();
  //   emailController.dispose();
  //   phoneController.dispose();
  //   genderController.dispose();
  //   passwordController.dispose();
  //   super.dispose();
  // }



// to register user into firebase
  registration() async {

    final name = nameController.text;
    final email = emailController.text;
    final phone = phoneController.text;
    final gender = genderController.text;
    final String password = passwordController.text;
    final String cpassword = cpasswordController.text;

    if (password == cpassword) {
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password);
        print(userCredential);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Colors.redAccent,
            content: Text(
              "Registered Successfully. Please Login..",
              style: TextStyle(fontSize: 20.0),
            ),
          ),
        );
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => Login(),
          ),
        );
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          print("Password Provided is too Weak");
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: Colors.orangeAccent,
              content: Text(
                "Password Provided is too Weak",
                style: TextStyle(fontSize: 18.0, color: Colors.black),
              ),
            ),
          );
        } else if (e.code == 'email-already-in-use') {
          print("Account Already exists");
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: Colors.orangeAccent,
              content: Text(
                "Account Already exists",
                style: TextStyle(fontSize: 18.0, color: Colors.black),
              ),
            ),
          );
        }
      }
    } else {
      print("Password and Confirm Password doesn't match");
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.orangeAccent,
          content: Text(
            "Password and Confirm Password doesn't match",
            style: TextStyle(fontSize: 16.0, color: Colors.black),
          ),
        ),
      );
    }
  }


  @override
  Widget build(BuildContext context) {
    final nameField = TextFormField(
      autofocus: false,
      controller: nameController,
      keyboardType: TextInputType.text,
      onSaved: (value) {
        nameController.text = value!;
      },
      validator: (String? value) {
        if (value == null || value.isEmpty) {
          return 'please Enter name';
        }
        return null;
      },
      textInputAction: TextInputAction.next,
      decoration: const InputDecoration(
          contentPadding: EdgeInsets.only(bottom: 10),
          suffixIcon: Icon(
            Icons.person,
            size: 25,
            color: Colors.pink,
          ),
          labelText: 'Full Name',
          labelStyle: TextStyle(
            color: Colors.black,
          )),
    );

    final emailField = TextFormField(
      autofocus: false,
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      validator: (String? value) {
        if (value == null || value.isEmpty) {
          return 'please Enter email';
        }
        return null;
      },
      onSaved: (value) {
        emailController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: const InputDecoration(
          contentPadding: EdgeInsets.only(bottom: 10),
          suffixIcon: Icon(
            Icons.email,
            size: 25,
            color: Colors.pink,
          ),
          labelText: 'Email address',
          labelStyle: TextStyle(
            color: Colors.black,
          )),
    );

    final phoneField = TextFormField(
      autofocus: false,
      controller: phoneController,
      keyboardType: TextInputType.phone,
      validator: (String? value) {
        if (value == null || value.isEmpty) {
          return 'please Enter phone ';
        }
        return null;
      },
      onSaved: (value) {
        phoneController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: const InputDecoration(
          contentPadding: EdgeInsets.only(bottom: 10),
          suffixIcon: Icon(
            Icons.phone,
            size: 25,
            color: Colors.pink,
          ),
          labelText: 'Phone Number',
          labelStyle: TextStyle(
            color: Colors.black,
          )),
    );
    String gender = 'Gender';
    final dropdown = DropdownButtonFormField<String>(
      value: gender,
      autofocus: false,
      decoration: const InputDecoration(
        contentPadding: EdgeInsets.only(right: 10),
      ),
      icon: const Icon(
        Icons.arrow_downward,
        size: 25,
        color: Colors.pink,
      ),
      elevation: 16,
      onChanged: (String? newValue) {
        setState(() {
          gender = newValue!;
        });
      },
      items: <String>['Gender','Male', 'Female']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );

    final passwordField = TextFormField(
      autofocus: false,
      controller: passwordController,
      obscureText: true,
      keyboardType: TextInputType.visiblePassword,
      validator: (String? value) {
        if (value == null || value.isEmpty) {
          return 'please Enter password';
        }
        return null;
      },
      onSaved: (value) {
        passwordController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: const InputDecoration(
          contentPadding: EdgeInsets.only(bottom: 10),
          suffixIcon: Icon(
            Icons.lock,
            size: 25,
            color: Colors.pink,
          ),
          labelText: 'Password',
          labelStyle: TextStyle(
            color: Colors.black,
          )),
    );


    final cpasswordField = TextFormField(
      autofocus: false,
      controller: cpasswordController,
      obscureText: true,
      keyboardType: TextInputType.visiblePassword,
      validator: (String? value) {
        if (value == null || value.isEmpty) {
          return 'please Enter password';
        }
        return null;
      },
      onSaved: (value) {
        cpasswordController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: const InputDecoration(
          contentPadding: EdgeInsets.only(bottom: 10),
          suffixIcon: Icon(
            Icons.lock,
            size: 25,
            color: Colors.pink,
          ),
          labelText: 'Password',
          labelStyle: TextStyle(
            color: Colors.black,
          )),
    );

    final signUpButton = Material(
      elevation: 10,
      color: Colors.purple,
      borderRadius: BorderRadius.circular(25),
      child: MaterialButton(
        padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
        //minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          if (formkey.currentState!.validate()) {
            formkey.currentState!.save();

          registration();
          }
        },
        child: const Text(
          'Sign up',
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
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
                key: formkey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const SizedBox(height: 50,),
                    SizedBox(
                      height: 150,
                      child: Image.asset('assets/alfacare.png',
                          fit: BoxFit.fill, width: 300),
                    ),
                    const SizedBox(height: 10,),
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
                    dropdown,
                    const SizedBox(
                      height: 20,
                    ),
                    passwordField,
                    const SizedBox(
                      height: 50,
                    ),
                    cpasswordField,
                    const SizedBox(
                      height: 50,
                    ),

                    signUpButton,
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("If you are already a user then "),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Login()));
                          },
                          child: const Text(
                            'Sign In',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                              color: Colors.pink,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
