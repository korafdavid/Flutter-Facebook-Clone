// ignore_for_file: prefer_const_constructors
import 'package:fbclone/large_screen.dart';
import 'package:fbclone/responsive.dart';
import 'package:fbclone/small_screen.dart';
import 'package:fbclone/medium_screen.dart';
import 'package:flutter/material.dart';


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
      largeScreen: LaptopScreen(),
      mediumScreen: TabletScreen(),
      smallScreen: SmallSreen()
    );
  }
}
