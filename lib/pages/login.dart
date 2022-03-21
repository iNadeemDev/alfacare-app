//import 'package:firebase_auth/firebase_auth.dart';
import 'package:alfacare/User/homeScreen/bottom_nav.dart';
import 'package:alfacare/pages/signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import "package:flutter/material.dart";

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final formKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  //final _auth = FirebaseAuth.instance;

  String? errorMessage;



  userLogin() async {

  final String email = emailController.text;

  final String password = passwordController.text;
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => NavBar(),
        ),
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print("No User Found for that Email");
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Colors.orangeAccent,
            content: Text(
              "No User Found for that Email",
              style: TextStyle(fontSize: 18.0, color: Colors.black),
            ),
          ),
        );
      } else if (e.code == 'wrong-password') {
        print("Wrong Password Provided by User");
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Colors.orangeAccent,
            content: Text(
              "Wrong Password Provided by User",
              style: TextStyle(fontSize: 18.0, color: Colors.black),
            ),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final emailField = TextFormField(
      autofocus: false,
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      validator: (String? value) {
        if (value!.isEmpty) {
          return 'please Enter email';
        }
        if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)) {
          return ("Please Enter a valid email");
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

    final passwordField = TextFormField(
      autofocus: false,
      controller: passwordController,
      obscureText: true,
      keyboardType: TextInputType.visiblePassword,
      validator: (String? value) {
        RegExp regex = RegExp(r'^.{6,}$');
        if (value!.isEmpty) {
          return 'please Enter password';
        }
        if (!regex.hasMatch(value)) {
          return ("Enter Valid Password(Min. 6 Character)");
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

    final signInButton = Material(
      elevation: 10,
      color: Colors.purple,
      borderRadius: BorderRadius.circular(25),
      child: MaterialButton(
        padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
        //minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          //signIn(emailController.text, passwordController.text);
          userLogin();
          // Navigator.pushReplacement(context,
          //     MaterialPageRoute(builder: (context) => NavBar()));
        },
        child: const Text(
          'Sign In',
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
                key: formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const SizedBox(
                      height: 50,
                    ),
                    SizedBox(
                      height: 150,
                      child: Image.asset('assets/alfacare.png',
                          fit: BoxFit.fill, width: 300),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    emailField,
                    const SizedBox(
                      height: 20,
                    ),
                    passwordField,
                    const SizedBox(
                      height: 50,
                    ),
                    signInButton,
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Don't have an account? "),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SignUp()));
                          },
                          child: const Text(
                            'Sign Up',
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

//   Future <void> signIn(String email, String password) async {
//     if(formKey.currentState!.validate()) {
//       await _auth.signInWithEmailAndPassword(email: email, password: password).then((uid) => {
//         Fluttertoast.showToast(msg: 'Login successfully'),
//         Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> const Home())),
//       }).catchError((e){
//         Fluttertoast.showToast(msg: e!.message);
//       });
//     }
//   }
}
