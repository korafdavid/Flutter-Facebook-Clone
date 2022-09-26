import 'dart:async';

import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';


class StatusPage extends StatefulWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  State<StatusPage> createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  double value = 0;

  late StreamController<double> _streamController;
 late StreamSubscription<double> _timerSubscription;
  Stream<double> timer() async* {
    double value = 0;
    while(value < 1) {
      value += 0.001;
      Timer.periodic(const Duration(seconds: 60), (timer) { });
      
    }
    yield value;

  }

  late final stream;

//final subscription = stream.listen(print); 

  @override
  void initState() {
    debugPrint('start');
    stream = Stream.periodic(const Duration(seconds: 1), (i) => value += i)
    .take(10);
    _streamController = StreamController.broadcast();
 _timerSubscription = timer().listen((event) => _streamController.add(event),
 // this is just demo; in a real case senerio you propably use Pagebuilder so ondone should get the next page.
 onDone: () {},
 );
    
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PhotoView(
          imageProvider: const AssetImage('assets/profile2.jpg'),
        ),
          Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: StreamBuilder<double>(
              stream: _streamController.stream,
              builder: (context, snapshot) {
                return LinearProgressIndicator(
                  minHeight: 6,
                  valueColor: AlwaysStoppedAnimation(Colors.blue),
                  color: Colors.red,
                  value: value,
                );
                  }),
          )
            
          
    
          ],
        ),
      ),
    );
  }
}




class ImageView extends StatefulWidget {
  final String url;

  const ImageView({Key? key, required this.url}) : super(key: key);
  @override
  _ImageViewState createState() => _ImageViewState();
}

class _ImageViewState extends State<ImageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(Icons.navigate_before, color: Colors.white)),
        actions: [
          PopupMenuButton(
              icon: const Icon(Icons.more_vert, color: Colors.white),
              onSelected: (value) {},
              itemBuilder: (context) => [
                  const  PopupMenuItem(
                      child: Text("save"),
                      value: 1,
                    ),
                  ])
        ],
      ),
      body: PhotoView(
        imageProvider: const AssetImage('assets/profile2.jpg'),
      ),
    );
  }
}
