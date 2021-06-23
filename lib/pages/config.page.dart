import 'package:flutter/material.dart';

//import './home.page.dart';
class ConfigPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ConfigPageState();
  }
}

class ConfigPageState extends State<ConfigPage> {
  int index = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Container(),
      ),
    );
  }
}
