import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthForm extends StatefulWidget {
  @override
  _AuthFormState createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  //------------------------------------------
  final _formkey = GlobalKey<FormState>();
  var _email = '';
  var _password = '';
  var _username = '';
  bool isLoginPage = false;

  //------------------------------------------
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          children: [
            Container(
                padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                child: Form(
                  key: _formkey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (!isLoginPage)
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          key: ValueKey('username'),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Incorrect Username';
                            }
                            return null;
                          },
                          onSaved: (value) {
                            _username = value;
                          },
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: new BorderRadius.circular(8.0),
                                  borderSide: new BorderSide()),
                              labelText: "Enter Username",
                              labelStyle: GoogleFonts.roboto()),
                        ),
                      SizedBox(height: 10),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        key: ValueKey('email'),
                        validator: (value) {
                          if (value.isEmpty || !value.contains('@')) {
                            return 'Incorrect Email';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _email = value;
                        },
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(8.0),
                                borderSide: new BorderSide()),
                            labelText: "Enter Email",
                            labelStyle: GoogleFonts.roboto()),
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        key: ValueKey('password'),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Incorrect password';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _password = value;
                        },
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(8.0),
                                borderSide: new BorderSide()),
                            labelText: "Enter Password",
                            labelStyle: GoogleFonts.roboto()),
                      ),
                      SizedBox(height: 10),
                      Container(
                          padding: EdgeInsets.all(5),
                          width: double.infinity,
                          height: 70,
                          child: RaisedButton(
                              child: isLoginPage
                                  ? Text('Login',
                                      style: GoogleFonts.roboto(fontSize: 16))
                                  : Text('SignUp',
                                      style: GoogleFonts.roboto(fontSize: 16)),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              color: Theme.of(context).primaryColor,
                              onPressed: () {}))
                    ],
                  ),
                ))
          ],
        ));
  }
}
