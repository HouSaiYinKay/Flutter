import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boost/flutter_boost.dart';

class OtherPage extends StatefulWidget {
  final String title;
  @override
  _SplashPageState createState() => _SplashPageState();
  OtherPage(this.title);
}

class _SplashPageState extends State<OtherPage> {
  @override
  void initState() {
    super.initState();
    Logger.log('boost-SplashPage $mounted');
  }

  @override
  Widget build(BuildContext context) {
    Logger.log('boost-SplashPage $mounted');
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Flex(
        direction: Axis.vertical,
        children: [
          GestureDetector(
            onTap: () {
              BoostNavigator.instance.push("native");
            },
            child: ElevatedButton(
              child: Text('跳到原生'),
              onPressed: () {
                BoostNavigator.instance.push(
                  "NativePage", //required
                  withContainer: false, //optional
                  arguments: {"name": "jumpFromflutter"}, //optional
                  opaque: true, //optional,default value is true
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
