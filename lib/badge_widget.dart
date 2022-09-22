import "package:flutter/material.dart";

class AccountCard extends StatefulWidget {
  const AccountCard({Key? key, required this.end, required this.name,  this.image}) : super(key: key);
  final bool end;
  final String name;
  final String? image;
  

  @override
  State<AccountCard> createState() => _AccountCardState();
}

class _AccountCardState extends State<AccountCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 180,
          margin: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.blueGrey)),
          child: Column(
            children: [
             if (widget.end) 
             ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15)
                ),
              child: Image.asset(widget.image!, height: 140))
              else
                 Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                     borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15)
                ),
                  ),
                padding:  const EdgeInsets.symmetric(horizontal: 50, vertical: 40),
                child:  Icon(Icons.add_circle, size: 50, color: Colors.blue),
              ),
               Padding(
                 padding: const EdgeInsets.all(4.0),
                 child: Text(widget.name, style: TextStyle(fontSize: 18, color: widget.end ? Colors.grey[800] : Colors.blue)),
               )
            ],
          ),
        ),
      ],
    );
  }
}

class Badge extends StatefulWidget {
  final double top;
  final double right;
  final Widget child; // our Badge widget will wrap this child widget
  final String value; // what displays inside the badge
  final Color color; // the  background color of the badge - default is red

  Badge(
      {required this.child,
      required this.value,
      required this.color,
      required this.top,
      required this.right});

  @override
  _BadgeState createState() => _BadgeState();
}

class _BadgeState extends State<Badge> {
  @override
  Widget build(BuildContext context) {
    int numval = int.parse(widget.value);
    return Stack(
      alignment: Alignment.center,
      children: [
        widget.child,
        Positioned(
          right: widget.right,
          top: widget.top,
          child: Container(
            padding: const EdgeInsets.all(2.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: numval == 0 ? Colors.transparent : widget.color,
            ),
            constraints: const BoxConstraints(
              minWidth: 13,
              minHeight: 13,
            ),
            child: Text(
              widget.value,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: numval == 0 ? Colors.transparent : Colors.white,
                fontSize: 7,
              ),
            ),
          ),
        )
      ],
    );
  }
}
