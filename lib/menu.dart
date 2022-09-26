import 'package:fbclone/profile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconsax/iconsax.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text('Menu',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 30))),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 10, bottom: 10, top: 20),
                child: InkWell(
                    onTap: (() => Navigator.push(context, MaterialPageRoute(builder: (context) =>ProfilePage()))),
                    child: ClipOval(
                        child: Image.asset('assets/giannis.jpg', height: 55))),
              ),
              Expanded(
                child: Column(
                  children: const [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text('David Okoroafor',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold))),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text('See your profile',
                          style: TextStyle(fontSize: 12)),
                    ),
                  ],
                ),
              ),
            ],
          ),
          GridView.count(
            padding: EdgeInsets.zero,
            crossAxisCount: 2,
            shrinkWrap: true,
            childAspectRatio: 2,
            children: const [
              Grid(
                  name: 'Groups',
                  icon: Icon(Icons.account_circle, color: Colors.blue)),
              Grid(
                  name: 'Friends',
                  icon: Icon(Icons.people, color: Colors.blue)),
              Grid(
                  name: 'Market Place',
                  icon: Icon(Icons.store, color: Colors.blue)),
              Grid(
                  name: 'Video on Watch',
                  icon: Icon(FontAwesomeIcons.youtube, color: Colors.blue)),
              Grid(
                  name: 'Memories',
                  icon: Icon(Icons.watch_later_outlined, color: Colors.blue)),
              Grid(
                  name: 'Saved',
                  icon: Icon(Icons.bookmark, color: Colors.purpleAccent)),
              Grid(name: 'Pages', icon: Icon(Icons.flag, color: Colors.orange)),
              Grid(name: 'Events', icon: Icon(Icons.event, color: Colors.red)),
              Grid(name: 'Gaming', icon: Icon(Icons.games, color: Colors.blue)),
              Grid(name: 'Stories', icon: Icon(Icons.book, color: Colors.blue))
            ],
          )
        ],
      ),
    );
  }
}

class Grid extends StatelessWidget {
  final String name;
  final Icon icon;
  const Grid({Key? key, required this.name, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Container(
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(17),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(alignment: Alignment.topLeft, child: icon),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    name,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 21),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
