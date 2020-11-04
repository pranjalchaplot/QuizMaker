import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:main/views/signin.dart';
import 'package:main/widgets/widgets.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  String email, password, name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: appBar(context),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        brightness: Brightness.light,
      ),
      body: Form(
        key: _formKey,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              Spacer(),
              TextFormField(
                validator: (val) {
                  return val.isEmpty ? "Enter Name" : null;
                },
                decoration: InputDecoration(hintText: "Name"),
                onChanged: (val) {
                  name = val;
                },
              ),
              SizedBox(height: 6),
              TextFormField(
                validator: (val) {
                  return val.isEmpty ? "Enter email" : null;
                },
                decoration: InputDecoration(hintText: "Email"),
                onChanged: (val) {
                  email = val;
                },
              ),
              SizedBox(height: 6),
              TextFormField(
                validator: (val) {
                  return val.isEmpty ? "Enter password" : null;
                },
                decoration: InputDecoration(hintText: "Password"),
                onChanged: (val) {
                  password = val;
                },
              ),
              SizedBox(height: 24),
              Container(
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  // gradient: LinearGradient(colors: [
                  //   const Color(0xff020024),
                  //   const Color(0xff090979),
                  // ]),
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: EdgeInsets.symmetric(vertical: 18),
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width - 48,
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(height: 18),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account? ",
                    style: TextStyle(fontSize: 16),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignIn(),
                          ));
                    },
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                        fontSize: 16,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 80,
              )
            ],
          ),
        ),
      ),
    );
  }
}
