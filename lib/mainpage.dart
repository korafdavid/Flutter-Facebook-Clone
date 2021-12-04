// ignore_for_file: prefer_const_constructors

import 'package:fbclone/homepage.dart';
import 'package:fbclone/menu.dart';
import 'package:fbclone/post_widget.dart';
import 'package:fbclone/profile.dart';
import 'package:fbclone/responsive.dart';
import 'package:fbclone/search.dart';
import 'package:fbclone/settings.dart';
import 'package:fbclone/watch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.orange;
    }
    return Colors.red;
  }

  bool showMore = false;
  logOut() {
    return showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
              title: Text('Are you sure you want to log out?'),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('Cancel')),
                TextButton(onPressed: () async {}, child: Text('log Out'))
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      //Laptop View
      largeScreen: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: PreferredSize(
              preferredSize: Size(MediaQuery.of(context).size.width, 130),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white10,
                    border: Border(bottom: BorderSide(color: Colors.white24))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Ink(
                                decoration: ShapeDecoration(
                                    shape: CircleBorder(
                                        side: BorderSide(color: Colors.blue)),
                                    color: Colors.white),
                                child: FaIcon(FontAwesomeIcons.facebook,
                                    color: Colors.blue[900], size: 40)),
                          ),
                          SizedBox(
                            width: 200,
                            // color: Colors.white,
                            child: TextFormField(
                              decoration: InputDecoration(
                                  isDense: true,
                                  filled: true,
                                  fillColor: Colors.red[390],
                                  prefixIcon: Icon(Icons.search),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  hintText: 'Search'),
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: TabBar(
                        indicatorColor: Colors.blue,
                        padding: EdgeInsets.only(top: 5),
                        indicatorWeight: 4,
                        labelColor: Colors.blue,
                        unselectedLabelColor: Colors.white,
                        //overlayColor:
                        //      MaterialStateProperty.resolveWith(getColor),
                        tabs: const [
                          Tab(child: Icon(FontAwesomeIcons.home)),
                          Tab(child: Icon(Icons.notifications)),
                          Tab(child: Icon(Icons.mail)),
                          Tab(child: Icon(Icons.person)),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 15),
                              child: Ink(
                                  decoration: ShapeDecoration(
                                      shape: CircleBorder(),
                                      color: Colors.white10),
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(FontAwesomeIcons.th,
                                          size: 13, color: Colors.white))),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 15),
                              child: Ink(
                                  decoration: ShapeDecoration(
                                      shape: CircleBorder(),
                                      color: Colors.white10),
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                          FontAwesomeIcons.facebookMessenger,
                                          color: Colors.white))),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 15),
                              child: Ink(
                                  decoration: ShapeDecoration(
                                      shape: CircleBorder(),
                                      color: Colors.white10),
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.notifications,
                                          color: Colors.white))),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 15),
                              child: Ink(
                                  decoration: ShapeDecoration(
                                      shape: CircleBorder(),
                                      color: Colors.white10),
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(FontAwesomeIcons.sortDown,
                                          color: Colors.white))),
                            ),
                          ]),
                    )
                  ],
                ),
              )),
          body: Row(
            children: [
              Expanded(
                child: Scrollbar(
                  child: ListView(
                    children: [
                      ListTile(
                          leading: CircleAvatar(
                              maxRadius: 13,
                              backgroundColor: Colors.grey[100],
                              child: Icon(Icons.person)),
                          hoverColor: Colors.white10,
                          title: Text('David Okoroafor',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          onTap: () {}),
                      ListTile(
                        leading: FaIcon(FontAwesomeIcons.userFriends,
                            color: Colors.blue),
                        hoverColor: Colors.white10,
                        title: Text('Friends',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: FaIcon(FontAwesomeIcons.peopleCarry,
                            color: Colors.blue),
                        hoverColor: Colors.white10,
                        title: Text('Groups',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                      ListTile(
                        leading: FaIcon(FontAwesomeIcons.facebookMessenger,
                            color: Colors.blue),
                        hoverColor: Colors.white10,
                        title: Text('Market Place',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: FaIcon(FontAwesomeIcons.facebookMessenger,
                            color: Colors.blue),
                        hoverColor: Colors.white10,
                        title: Text('Memories',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: Icon(Icons.bookmark, color: Colors.orange),
                        hoverColor: Colors.white10,
                        title: Text('Saved',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                      ListTile(
                        leading: FaIcon(FontAwesomeIcons.facebookMessenger,
                            color: Colors.blue),
                        hoverColor: Colors.white10,
                        title: Text('Pages',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: FaIcon(FontAwesomeIcons.facebookMessenger,
                            color: Colors.blue),
                        hoverColor: Colors.white10,
                        title: Text('Events',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: FaIcon(FontAwesomeIcons.briefcase,
                            color: Colors.orange),
                        hoverColor: Colors.white10,
                        title: Text('Jobs',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        onTap: () {},
                      ),
                      if (showMore)
                        for (var a in sideList) a,
                      // New ShowMore Less

                      ListTile(
                        leading: showMore
                            ? FaIcon(
                                FontAwesomeIcons.sortUp,
                              )
                            : FaIcon(
                                FontAwesomeIcons.sortDown,
                              ),
                        hoverColor: Colors.white10,
                        title: Text(showMore ? 'show less' : 'show More'),
                        onTap: () {
                          setState(() {
                            showMore = !showMore;
                          });
                        },
                      ),
                      Divider(),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: TabBarView(
                    children: const [
                      HomePage(),
                      Settings(),
                      Watch(),
                      ProfilePage(),
                    ],
                  ),
                ),
              ),
              Expanded(
                  child: Scrollbar(
                child: ListView(
                  children: [
                    ListTile(
                        title: Text('Suggestion',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        trailing: Icon(Icons.more_horiz)),
                    Row(children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset('assets/image2.jpg',
                                height: 100, width: 120)),
                      ),
                      Flexible(
                        child: Text('Try for free',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold)),
                      )
                    ]),
                    Row(children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset('assets/image2.jpg',
                                height: 100, width: 120)),
                      ),
                      Flexible(
                        child: Text('Good bye delay',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold)),
                      )
                    ]),
                    ListTile(
                        title: Text('Contacts',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        trailing: Icon(Icons.more_horiz)),
                    for (int a = 0; a < 10; a++)
                      ListTile(
                          leading: CircleAvatar(
                              radius: 18,
                              backgroundImage: AssetImage('assets/image1.jpg')),
                          onTap: () {},
                          hoverColor: Colors.white10,
                          title: Text('Prisca Amaka',
                              style: TextStyle(fontWeight: FontWeight.bold))),
                  ],
                ),
              )),
            ],
          ),
        ),
      ),

      //Tablet View
      mediumScreen: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: PreferredSize(
              preferredSize: Size(MediaQuery.of(context).size.width, 130),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white10,
                    border: Border(bottom: BorderSide(color: Colors.white24))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Ink(
                                decoration: ShapeDecoration(
                                    shape: CircleBorder(
                                        side: BorderSide(color: Colors.blue)),
                                    color: Colors.white),
                                child: FaIcon(FontAwesomeIcons.facebook,
                                    color: Colors.blue[900], size: 40)),
                          ),
                         Ink(
                          decoration: ShapeDecoration(
                              shape: CircleBorder(), color: Colors.white10),
                          child: IconButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => SearchPage()));
                              },
                              icon: Icon(FontAwesomeIcons.search)))
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: TabBar(
                        indicatorColor: Colors.blue,
                        padding: EdgeInsets.only(top: 5),
                        indicatorWeight: 4,
                        labelColor: Colors.blue,
                        unselectedLabelColor: Colors.white,
                        //overlayColor:
                        //      MaterialStateProperty.resolveWith(getColor),
                        tabs: const [
                          Tab(child: Icon(FontAwesomeIcons.home)),
                          Tab(child: Icon(Icons.notifications)),
                          Tab(child: Icon(Icons.mail)),
                          Tab(child: Icon(Icons.person)),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 15),
                              child: Ink(
                                  decoration: ShapeDecoration(
                                      shape: CircleBorder(),
                                      color: Colors.white10),
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(FontAwesomeIcons.th,
                                          size: 13, color: Colors.white))),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 15),
                              child: Ink(
                                  decoration: ShapeDecoration(
                                      shape: CircleBorder(),
                                      color: Colors.white10),
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                          FontAwesomeIcons.facebookMessenger,
                                          color: Colors.white))),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 15),
                              child: Ink(
                                  decoration: ShapeDecoration(
                                      shape: CircleBorder(),
                                      color: Colors.white10),
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.notifications,
                                          color: Colors.white))),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 15),
                              child: Ink(
                                  decoration: ShapeDecoration(
                                      shape: CircleBorder(),
                                      color: Colors.white10),
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(FontAwesomeIcons.sortDown,
                                          color: Colors.white))),
                            ),
                          ]),
                    )
                  ],
                ),
              )),
          body: Row(
            children: [
             
              Expanded(
                flex: 3,
                child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: TabBarView(
                    children: const [
                      HomePage(),
                      Settings(),
                      Watch(),
                      ProfilePage(),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Scrollbar(
                  child: ListView(
                    children: [
                      ListTile(
                          leading: CircleAvatar(
                              maxRadius: 13,
                              backgroundColor: Colors.grey[100],
                              child: Icon(Icons.person)),
                          hoverColor: Colors.white10,
                          title: Text('David Okoroafor',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          onTap: () {}),
                      ListTile(
                        leading: FaIcon(FontAwesomeIcons.userFriends,
                            color: Colors.blue),
                        hoverColor: Colors.white10,
                        title: Text('Friends',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: FaIcon(FontAwesomeIcons.peopleCarry,
                            color: Colors.blue),
                        hoverColor: Colors.white10,
                        title: Text('Groups',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                      ListTile(
                        leading: FaIcon(FontAwesomeIcons.facebookMessenger,
                            color: Colors.blue),
                        hoverColor: Colors.white10,
                        title: Text('Market Place',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: FaIcon(FontAwesomeIcons.facebookMessenger,
                            color: Colors.blue),
                        hoverColor: Colors.white10,
                        title: Text('Memories',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: Icon(Icons.bookmark, color: Colors.orange),
                        hoverColor: Colors.white10,
                        title: Text('Saved',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                      ListTile(
                        leading: FaIcon(FontAwesomeIcons.facebookMessenger,
                            color: Colors.blue),
                        hoverColor: Colors.white10,
                        title: Text('Pages',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: FaIcon(FontAwesomeIcons.facebookMessenger,
                            color: Colors.blue),
                        hoverColor: Colors.white10,
                        title: Text('Events',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: FaIcon(FontAwesomeIcons.briefcase,
                            color: Colors.orange),
                        hoverColor: Colors.white10,
                        title: Text('Jobs',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        onTap: () {},
                      ),
                      if (showMore)
                        for (var a in sideList) a,
                      // New ShowMore Less

                      ListTile(
                        leading: showMore
                            ? FaIcon(
                                FontAwesomeIcons.sortUp,
                              )
                            : FaIcon(
                                FontAwesomeIcons.sortDown,
                              ),
                        hoverColor: Colors.white10,
                        title: Text(showMore ? 'show less' : 'show More'),
                        onTap: () {
                          setState(() {
                            showMore = !showMore;
                          });
                        },
                      ),
                      Divider(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      //Phone View
      smallScreen: DefaultTabController(
          length: 5,
          child: Scaffold(
              body: CustomScrollView(
            slivers: [
              SliverAppBar(
                title: Text('facebook',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                pinned: true,
                floating: true,
                actions: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(children: const [
                        Icon(Icons.favorite, color: Colors.red),
                        Text('12'),
                      ]),
                      Ink(
                          decoration: ShapeDecoration(
                              shape: CircleBorder(), color: Colors.white10),
                          child: IconButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => SearchPage()));
                              },
                              icon: Icon(FontAwesomeIcons.search)))
                    ],
                  ),
                ],
                bottom: TabBar(tabs: const [
                  Tab(icon: Icon(FontAwesomeIcons.home)),
                  Tab(icon: Icon(Icons.notification_add_rounded)),
                  Tab(icon: Icon(FontAwesomeIcons.facebookMessenger)),
                  Tab(icon: Icon(Icons.person)),
                  Tab(icon: Icon(Icons.menu)),
                ]),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: TabBarView(
                    children: const [
                      HomePage(),
                      Settings(),
                      Watch(),
                      ProfilePage(),
                      Menu()
                    ],
                  ),
                ),
              ),
            ],
          ))),
    );
  }
}
