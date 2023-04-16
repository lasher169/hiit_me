import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hiit_me/details.dart';

class HiiTMeApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HiiTMeApp();
  }
}

class _HiiTMeApp extends State<HiiTMeApp> {


  // Future<void> loadAsset(BuildContext context) async {
  //   final jsonString = await DefaultAssetBundle.of(context)
  //       .loadString('assets/my_config.json');
  //   final dynamic jsonMap = jsonDecode(jsonString);
  //   print('pixaKey ${jsonMap['pixaUrl']}');
  // }

  @override
  void initState() {
    super.initState();
    // TODO: implement initState
    // loadAsset(context);
  }

  @override
  Widget build(BuildContext context) {
    // print('redraw');
    return MaterialApp(
      title: "Navigation Demo",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DetailsHomePage(),
    );
  }
}