import 'dart:io';

import 'package:fbclone/badge_widget.dart';
import 'package:fbclone/mainpage.dart';
import 'package:fbclone/responsive.dart';
import 'package:fbclone/sign_up.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final TextEditingController _ctrlEmail = TextEditingController();
  final TextEditingController _ctrlPassword = TextEditingController();
  bool loginfail = false;
  String errorText = '';

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrain) {
      if (Platform.isAndroid || Platform.isIOS || Platform.isFuchsia) {
        return SignInMobile();
      } else {
        return signInNotMobile(
            ctrlEmail: _ctrlEmail, ctrlPassword: _ctrlPassword);
      }
    });
  }
}

class SignInMobile extends StatelessWidget {
  const SignInMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextFormField(
            decoration:  InputDecoration(
              hintText: 'Phone or email',
              suffixIcon: Icon(Icons.rounded_corner, color: Colors.grey[300]),
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Password',

            ),
          ),
          MaterialButton(
            onPressed: (){},
            child:const Text('Log In'),
            color: Colors.blue[800],
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          )
        ],
      ),
    );
  }
}

class signInNotMobile extends StatelessWidget {
  const signInNotMobile({
    Key? key,
    required TextEditingController ctrlEmail,
    required TextEditingController ctrlPassword,
  })  : _ctrlEmail = ctrlEmail,
        _ctrlPassword = ctrlPassword,
        super(key: key);

  final TextEditingController _ctrlEmail;
  final TextEditingController _ctrlPassword;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        body: Flex(
          direction: isLargeScreen(context) ? Axis.horizontal : Axis.vertical,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: isLargeScreen(context) ? 100 : 14, bottom: 9),
                  child: Text(
                    'facebook',
                    style: TextStyle(
                        fontSize: 34,
                        color: Colors.blue[700],
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const Text('Recent logins',
                    style: TextStyle(fontSize: 25, color: Colors.black87)),
                const Text('Click on your picture or add an account'),
                Row(
                  children: const [
                    AccountCard(
                      end: true,
                      name: 'David',
                      image: 'assets/profileImage.jpeg',
                    ),
                    AccountCard(end: false, name: 'Add Acount')
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: isLargeScreen(context) ? 150 : 16,
                  vertical: isLargeScreen(context) ? 160 : 9),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(9),
                ),
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 400,
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: _ctrlEmail,
                          decoration: InputDecoration(
                            hintText: 'something@email.com',

                            // fillColor: Colors.blue[100],
                            //filled: true,
                            border: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Color(0xFFE0E0E0)),
                                borderRadius: BorderRadius.circular(7)),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Color(0xFFE0E0E0)),
                                borderRadius: BorderRadius.circular(7)),
                          ),
                        ),
                      ),
                      Container(
                        width: 400,
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: _ctrlPassword,
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: 'password',
                            border: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Color(0xFFE0E0E0)),
                                borderRadius: BorderRadius.circular(7)),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Color(0xFFE0E0E0)),
                                borderRadius: BorderRadius.circular(7)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: MaterialButton(
                          color: Colors.blue[600],
                          textColor: Colors.white,
                          minWidth: 400,
                          height: 60,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7)),
                          onPressed: () async {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const MainPage()));
                          },
                          child: const Text(
                            'Log In',
                            style: TextStyle(
                                fontSize: 21, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 400,
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'forget Password?',
                              style: TextStyle(color: Colors.blue[900]),
                            )),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Divider(),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: MaterialButton(
                          color: Colors.greenAccent[700],
                          textColor: Colors.white,
                          minWidth: 200,
                          height: 60,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7)),
                          onPressed: () async {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const MainPage()));
                          },
                          child: const Text(
                            'Create New Account',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
