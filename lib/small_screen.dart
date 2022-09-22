import 'package:fbclone/badge_widget.dart';
import 'package:flutter/material.dart';
import 'package:fbclone/menu.dart';
import 'package:fbclone/profile.dart';
import 'package:fbclone/homepage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fbclone/watch.dart';
import 'package:fbclone/search.dart';
import 'package:fbclone/settings.dart';


class SmallSreen extends StatefulWidget {
  const SmallSreen({Key? key}) : super(key: key);

  @override
  State<SmallSreen> createState() => _SmallSreenState();
}

class _SmallSreenState extends State<SmallSreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
            body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.white,
              title: Text('facebook',
                  style: TextStyle(
                      fontSize: 28,
                      color: Colors.blue[900],
                      fontWeight: FontWeight.bold)),
              pinned: true,
              floating: true,
              actions: [
               
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Ink(
                          decoration: const ShapeDecoration(
                              shape: CircleBorder(), color: Colors.white10),
                          width: 40,
                          child: IconButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const SearchPage()));
                              },
                              icon:  Icon(
                                FontAwesomeIcons.search,
                                color: Colors.blue[900],
                                size: 19,
                              ))),
                    ),
                    Ink(
                        decoration: const ShapeDecoration(
                            shape: CircleBorder(), color: Colors.white10),
                        width: 40,
                        child: Stack(
                          children: [
                            
                            Badge(
                              value: '2',
                              right: 1,
                              color: Colors.red,
                              top: 1,
                              child: IconButton(
                                  onPressed: () {
                                    Navigator.of(context).push(MaterialPageRoute(
                                        builder: (context) => const SearchPage()));
                                  },
                                  icon:  Icon(
                                    FontAwesomeIcons.facebookMessenger,
                                    color: Colors.blue[900],
                                    size: 19,
                                  )),
                            ),
                          ],
                        ))
                
              ],
              bottom: TabBar(
                  indicatorColor: Colors.blue[900],
                  labelColor: Colors.blue[900],
                  unselectedLabelColor: Colors.grey,
                  tabs: const [
                    Tab(icon: Icon(Icons.home)),
                    Tab(icon: Icon(FontAwesomeIcons.youtubeSquare)),
                    Tab(icon: Icon(FontAwesomeIcons.storeAlt, size: 20,)),
                    Tab(icon: Icon(Icons.notifications_outlined)),
                    Tab(icon: Icon(Icons.menu)),
                  ]),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                child: const TabBarView(
                  children:  [
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
        )));
  }
}
