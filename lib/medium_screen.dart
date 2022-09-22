import 'package:fbclone/post_widget.dart';
import 'package:flutter/material.dart';
import 'package:fbclone/menu.dart';
import 'package:fbclone/profile.dart';
import 'package:fbclone/homepage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fbclone/watch.dart';
import 'package:fbclone/search.dart';
import 'package:fbclone/settings.dart';

class TabletScreen extends StatefulWidget {
  const TabletScreen({Key? key}) : super(key: key);

  @override
  State<TabletScreen> createState() => _TabletScreenState();
}

class _TabletScreenState extends State<TabletScreen> {
    bool showMore = false;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size(MediaQuery.of(context).size.width, 130),
            child: Container(
              decoration: const BoxDecoration(
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
                              decoration: const ShapeDecoration(
                                  shape: CircleBorder(
                                      side: BorderSide(color: Colors.blue)),
                                  color: Colors.white),
                              child: FaIcon(FontAwesomeIcons.facebook,
                                  color: Colors.blue[900], size: 40)),
                        ),
                        Ink(
                            decoration: const ShapeDecoration(
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
                 const Expanded(
                    flex: 2,
                    child: TabBar(
                      indicatorColor: Colors.blue,
                      padding: EdgeInsets.only(top: 5),
                      indicatorWeight: 4,
                      labelColor: Colors.blue,
                      unselectedLabelColor: Colors.white,
                      //overlayColor:
                      //      MaterialStateProperty.resolveWith(getColor),
                      tabs: [
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
                                decoration: const ShapeDecoration(
                                    shape: CircleBorder(),
                                    color: Colors.white10),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(FontAwesomeIcons.th,
                                        size: 13, color: Colors.white))),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: Ink(
                                decoration: const ShapeDecoration(
                                    shape: CircleBorder(),
                                    color: Colors.white10),
                                child: IconButton(
                                    onPressed: () {},
                                    icon:const Icon(
                                        FontAwesomeIcons.facebookMessenger,
                                        color: Colors.white))),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: Ink(
                                decoration: const ShapeDecoration(
                                    shape: CircleBorder(),
                                    color: Colors.white10),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.notifications,
                                        color: Colors.white))),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: Ink(
                                decoration: const ShapeDecoration(
                                    shape: CircleBorder(),
                                    color: Colors.white10),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(FontAwesomeIcons.sortDown,
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
                child: const TabBarView(
                  children:  [
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
                   const ListTile(
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
                   const ListTile(
                      leading: Icon(Icons.bookmark, color: Colors.orange),
                      hoverColor: Colors.white10,
                      title: Text('Saved',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    ListTile(
                      leading: const FaIcon(FontAwesomeIcons.facebookMessenger,
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
                      leading: const FaIcon(FontAwesomeIcons.briefcase,
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
    );
  }
}
