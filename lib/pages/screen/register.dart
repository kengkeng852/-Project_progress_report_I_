// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:flutterproject/models/profile.dart';
import 'package:flutterproject/pages/screen/login.dart';

class RegisterScreen extends StatelessWidget {
  final formKey = GlobalKey<FormState>();

  Profile profile = Profile();
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register Screen"),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Fullname", style: TextStyle(fontSize: 20)),
                  TextFormField(
                    validator:
                        RequiredValidator(errorText: "please enter fullname"),
                    onSaved: (String? fullname) {
                      if (fullname != null) {
                        profile.fullName = fullname;
                      }
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text("Email", style: TextStyle(fontSize: 20)),
                  TextFormField(
                    validator: MultiValidator([
                      RequiredValidator(errorText: "please enter email"),
                      EmailValidator(errorText: "incorect email format")
                    ]),
                    keyboardType: TextInputType.emailAddress,
                    onSaved: (String? email) {
                      if (email != null) {
                        profile.email = email;
                      }
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text("Password", style: TextStyle(fontSize: 20)),
                  TextFormField(
                    validator:
                        RequiredValidator(errorText: "please enter password"),
                    obscureText: true,
                    onSaved: (String? password) {
                      if (password != null) {
                        profile.password = password;
                      }
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      child: Text(
                        "Register",
                        style: TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        if (formKey.currentState?.validate() ?? false) {
                          formKey.currentState?.save();
                          print(
                              "fullname = ${profile.fullName} email = ${profile.email} password = ${profile.password}");
                          formKey.currentState?.reset();
                        }
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return LoginScreen();
                          }),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}