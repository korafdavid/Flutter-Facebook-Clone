// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({ Key? key }) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
     
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
  onChanged: (String? value) {
    
  },
 textAlignVertical: TextAlignVertical.center,
  decoration: InputDecoration(
    prefixIcon: Icon(Icons.search),
    labelText: 'Suche',
    labelStyle: TextStyle(
      fontWeight: FontWeight.w700,
      color: Colors.green,
      fontSize: 14.0,
    ),
    filled: true,
    fillColor: Colors.red[390],
    contentPadding: EdgeInsets.only(
      top: 28.0,
      bottom: 14.0,
      left: 14.0,
      right: 14.0,
    ),
    floatingLabelBehavior: FloatingLabelBehavior.always,
    border: OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(6.0),
    ),
    // enabledBorder: OutlineInputBorder(
    //   borderSide: BorderSide.none,
    //   borderRadius: BorderRadius.circular(6.0),
    // ),
    //  focusedBorder: OutlineInputBorder(
    //   borderSide: BorderSide.none,
    //   borderRadius: BorderRadius.circular(6.0),
    // ),
  ),
  cursorWidth: 1.5,
  style: TextStyle(
    fontWeight: FontWeight.w600,
    color: Colors.black,
    fontSize: 14.0,
  ),
            ),
          )
        ],
      )
    );
  }
}