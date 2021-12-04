import 'package:fbclone/responsive.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
    return Container(
        decoration: BoxDecoration(
            color: Colors.white10, borderRadius: BorderRadius.circular(16)),
        padding: const EdgeInsets.only(top: 6),
           margin:  isLargeScreen(context)? const EdgeInsets.symmetric(horizontal: 150, vertical: 8) : const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
        child: InkWell(
            child: Column(children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 10, bottom: 10),
                child: InkWell(
                    onTap: widget.profileFunction,
                    child: ClipOval(child: widget.profileImage)),
              ),
              Expanded(
                child: Column(
                  children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text(widget.name, style: TextStyle(fontWeight: FontWeight.bold))),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Row(
                          children: [
                            Text(widget.username, style: TextStyle(color: Colors.white60, fontSize: 12)),
                            Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Text(widget.date, style: TextStyle(color: Colors.white60, fontSize: 9)),
                            ),
                           const FaIcon(FontAwesomeIcons.globe, size: 12, color: Colors.white60)
                          ],
                        )),
                  ],
                ),
              ),
              IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz)),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(widget.mainText),
            ),
          ),
          widget.image!,
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: const [
                      Icon(Icons.thumb_up, textDirection: TextDirection.rtl, color: Colors.blue),
                      Text('567'),
                    ],
                  ),
                ),
               const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('21 Comments'),
                ),
              ]),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.thumb_up_alt_outlined, textDirection: TextDirection.rtl),
                  ),
                  Text('Like')
                ],
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: FaIcon(FontAwesomeIcons.comment , textDirection: TextDirection.rtl),
                  ),
                  Text('Comment')
                ],
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.reply_rounded, textDirection: TextDirection.rtl),
                  ),
                  Text('Share')
                ],
              ),
            ],
          )
        ])));
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
