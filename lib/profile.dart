// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Container(height: 300),
                Image.asset('assets/profile2.jpg',
                    width: double.infinity, height: 140, fit: BoxFit.cover),
                Column(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 50, bottom: 14),
                        child: CircleAvatar(
                          backgroundColor: Colors.blue[600],
                          radius: 90,
                          child: CircleAvatar(
                            radius: 86,
                            backgroundImage: AssetImage('assets/profileImage.jpeg'),
                          ),
                        ),
                      ),
                    ),
                    Text('David Okoroafor',
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 26)),
                    Text(
                      'korafdavid',
                      style: TextStyle(fontSize: 19),
                    )
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    children: [
                      Text('SOTWARE DEVELOPER'),
                      Text('THE EXCEPTION'),
                      const Divider(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.work,
                              size: 30,
                              color: Colors.grey[700],
                            ),
                             Text.rich(
                              TextSpan(
                                children: const [
                                  TextSpan(text: ' Works at  '),
                                  TextSpan(
                                    text: 'UPWORK',
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.school,
                              size: 30,
                              color: Colors.grey[700],
                            ),
                            Text.rich(
                              TextSpan(
                                children: const [
                                  TextSpan(text: ' Studied at  '),
                                  TextSpan(
                                    text: 'LIVING WORD ACADEMY SECONDARY',
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                            Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.home,
                              size: 30,
                              color: Colors.grey[700],
                            ),
                            Text.rich(
                              TextSpan(
                                children: const [
                                  TextSpan(text: ' Lives at  '),
                                  TextSpan(
                                    text: 'Aba, Abia State',
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                            Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.favorite,
                              size: 30,
                              color: Colors.grey[700],
                            ),
                            Text.rich(
                              TextSpan(
                                children: const [
                                  TextSpan(
                                    text: '  Single',
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                            Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.wifi,
                              size: 30,
                              color: Colors.grey[700],
                            ),
                            Text.rich(
                              TextSpan(
                                children: const [
                                  TextSpan(text: ' Followed by  '),
                                  TextSpan(
                                    text: '9032 people',
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
