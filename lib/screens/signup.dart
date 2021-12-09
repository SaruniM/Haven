// ignore_for_file: unnecessary_new, prefer_const_constructors

import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
//form key
  final _formKey = GlobalKey<FormState>();

  //editing controller
  final firstnameEditingController = new TextEditingController();
  final lastnameEditingController = new TextEditingController();
  final emailEditingController = new TextEditingController();
  final passwordEditingController = new TextEditingController();
  final confirmpasswordEditingController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
//first name field
    final firstNamefield = TextFormField(
        autofocus: false,
        controller: firstnameEditingController,
        keyboardType: TextInputType.name,
        //validator: () {},
        onSaved: (value) {
          firstnameEditingController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.mail),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "First Name",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        ));

//last name field
    final lastNamefield = TextFormField(
        autofocus: false,
        controller: lastnameEditingController,
        keyboardType: TextInputType.name,
        //validator: () {},
        onSaved: (value) {
          lastnameEditingController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.mail),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Last Name",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        ));

//email field
    final emailfield = TextFormField(
        autofocus: false,
        controller: emailEditingController,
        keyboardType: TextInputType.emailAddress,
        //validator: () {},
        onSaved: (value) {
          emailEditingController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.mail),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Email",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        ));

//password field
    final passwordfield = TextFormField(
        autofocus: false,
        controller: passwordEditingController,
        obscureText: true,
        //validator: () {},
        onSaved: (value) {
          passwordEditingController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.mail),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Password",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        ));

//confirm password field
    final confirmpasswordfield = TextFormField(
        autofocus: false,
        controller: confirmpasswordEditingController,
        obscureText: true,
        //validator: () {},
        onSaved: (value) {
          confirmpasswordEditingController.text = value!;
        },
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.mail),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Confirm Password",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        ));

//signup button
    final signupButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.redAccent,
      child: MaterialButton(
          padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          minWidth: MediaQuery.of(context).size.width,
          onPressed: () {},
          child: Text(
            "Sign Up",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          )),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.red),
          onPressed: () {
            //passing this to the root
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                        height: 180,
                        child: Image.asset(
                          "assets/havenlogo.png",
                          fit: BoxFit.contain,
                        )),
                    SizedBox(height: 45),
                    firstNamefield,
                    SizedBox(height: 20),
                    lastNamefield,
                    SizedBox(height: 20),
                    emailfield,
                    SizedBox(height: 20),
                    passwordfield,
                    SizedBox(height: 20),
                    confirmpasswordfield,
                    SizedBox(height: 20),
                    signupButton,
                    SizedBox(height: 15),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
