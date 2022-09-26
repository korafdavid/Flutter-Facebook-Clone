import 'package:fbclone/status.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconsax/iconsax.dart';
import 'package:icony/icony_gameicons.dart';
import 'package:icony/icony_ikonate.dart';
import 'package:fbclone/responsive.dart';

// ignore: must_be_immutable
class PostWidget extends StatefulWidget {
  final Widget? image;

  final String username;
  final Widget profileImage;
  final String mainText;
  final String name;

  final String date;
  final Function()? profileFunction;

  const PostWidget(
      {Key? key,
      this.profileFunction,
      required this.profileImage,
      required this.name,
      required this.username,
      required this.mainText,
      required this.date,
      this.image})
      : super(key: key);

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: isLargeScreen(context)
            ? EdgeInsets.symmetric(horizontal: 150, vertical: 14)
            : isMediumScreen(context)
                ? EdgeInsets.symmetric(horizontal: 4, vertical: 14)
                : EdgeInsets.symmetric(vertical: 6),
        child: Card(
          child: Column(children: [
            Row(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20, right: 10, bottom: 10, top: 20),
                  child: InkWell(
                      onTap: widget.profileFunction,
                      child: ClipOval(child: widget.profileImage)),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text(widget.name,
                              style: TextStyle(fontWeight: FontWeight.bold))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Row(
                             children: [
                              // Text(widget.username,
                              //     style: TextStyle(
                              //          fontSize: 12)),
                              Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Text(widget.date,
                                    style: TextStyle(
                                         fontSize: 15)),
                              ),
                              const Icon(Iconsax.global5,
                                  size: 15, )
                            ],
                          )),
                    ],
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.more_horiz)),
                        IconButton(onPressed: (() {}), icon: Icon(Icons.close))
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(widget.mainText),
              ),
            ),
            InkWell(
              onTap: (() => Navigator.push(context, MaterialPageRoute(builder: ((context) => ImageView(url: ''))))),
              child: widget.image!),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: const [
                    Icon(Iconsax.heart_circle5,
                        textDirection: TextDirection.rtl, color: Colors.red),
                    Text('567'),
                  ],
                ),
              ),
              Text('21 Comments'),
            ]),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Ikonate(
                        Ikonate.thumb_up,
                        color: Colors.black,
                      ),
                    ),
                    Text('Like')
                  ],
                ),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Iconsax.message,
                          textDirection: TextDirection.ltr),
                    ),
                    Text('Comment')
                  ],
                ),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: FaIcon(Iconsax.share4,
                          textDirection: TextDirection.rtl),
                    ),
                    Text('Share')
                  ],
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}

List<Widget> sideList = [
  ListTile(
    leading: FaIcon(FontAwesomeIcons.facebookMessenger),
    hoverColor: Colors.white10,
    title: Text('Ad Centre'),
    onTap: () {},
  ),
  ListTile(
    leading: FaIcon(FontAwesomeIcons.facebookMessenger),
    hoverColor: Colors.white10,
    title: Text('Ads Manager'),
    onTap: () {},
  ),
  ListTile(
    leading: FaIcon(FontAwesomeIcons.facebookMessenger),
    hoverColor: Colors.white10,
    title: Text('Climate Science Centre'),
    onTap: () {},
  ),
  ListTile(
    leading: FaIcon(FontAwesomeIcons.facebookMessenger),
    hoverColor: Colors.white10,
    title: Text('Community Help'),
    onTap: () {},
  ),
  ListTile(
    leading: FaIcon(FontAwesomeIcons.facebookMessenger),
    hoverColor: Colors.white10,
    title: Text('COVID-19 Information Centre'),
    onTap: () {},
  ),
  ListTile(
    leading: FaIcon(FontAwesomeIcons.facebookMessenger),
    hoverColor: Colors.white10,
    title: Text('Emotional Health'),
    onTap: () {},
  ),
  ListTile(
    leading: FaIcon(FontAwesomeIcons.facebookMessenger),
    hoverColor: Colors.white10,
    title: Text('Facebook Pay'),
    onTap: () {},
  ),
  ListTile(
    leading: FaIcon(FontAwesomeIcons.facebookMessenger),
    hoverColor: Colors.white10,
    title: Text('Favourites'),
    onTap: () {},
  ),
  ListTile(
    leading: FaIcon(FontAwesomeIcons.facebookMessenger),
    hoverColor: Colors.white10,
    title: Text('Fundraiser'),
    onTap: () {},
  ),
  ListTile(
    leading: FaIcon(FontAwesomeIcons.facebookMessenger),
    hoverColor: Colors.white10,
    title: Text('Gaming Video'),
    onTap: () {},
  ),
  ListTile(
    leading: FaIcon(FontAwesomeIcons.facebookMessenger),
    hoverColor: Colors.white10,
    title: Text('Live Videos'),
    onTap: () {},
  ),
  ListTile(
    leading: FaIcon(FontAwesomeIcons.facebookMessenger),
    hoverColor: Colors.white10,
    title: Text('Ads Centre'),
    onTap: () {},
  ),
  ListTile(
    leading: FaIcon(FontAwesomeIcons.facebookMessenger),
    hoverColor: Colors.white10,
    title: Text('Messenger'),
    onTap: () {},
  ),
  ListTile(
    leading: FaIcon(FontAwesomeIcons.facebookMessenger),
    hoverColor: Colors.white10,
    title: Text('Messenger Kids'),
    onTap: () {},
  ),
  ListTile(
    leading: FaIcon(FontAwesomeIcons.facebookMessenger),
    hoverColor: Colors.white10,
    title: Text('Most Recent'),
    onTap: () {},
  ),
  ListTile(
    leading: FaIcon(FontAwesomeIcons.facebookMessenger),
    hoverColor: Colors.white10,
    title: Text('Play Games'),
    onTap: () {},

  ),
];