import 'package:flutter/material.dart';
//import 'package:flutter_app/new_page.dart';

Widget buildBottomAppBar() {
  return BottomAppBar(
    child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: SizedBox(
              height: 44,
              child: Material(
                type: MaterialType.transparency,
                child: InkWell(
                  onTap: () {},
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.cancel, color: Colors.blue, size: 24),
                      Text("Cancel")
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 44,
              child: Material(
                type: MaterialType.transparency,
                child: InkWell(
                  onTap: () {},
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.save, color: Colors.blue, size: 24),
                      Text("Save")
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 44,
              child: Material(
                type: MaterialType.transparency,
                child: InkWell(
//onTap: _incrementCounter,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.add, color: Colors.blue, size: 24),
                      Text("Add")
                    ],
                  ),
                ),
              ),
            ),
          ),
        ]),
  );
}
