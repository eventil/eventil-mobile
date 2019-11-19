// Copyright 2019 Eventil & contributors. All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:flutter/material.dart';
import 'package:mobile/EventScreen.dart';

void main() => runApp(EventilApp());

class EventilApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Eventil',
      theme: ThemeData(
        primaryColor: Color(0xFF333a47),
      ),
      home: MyHomePage(title: 'Browse Events'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: ListView(
        children: <Widget>[
          Card(
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => EventScreen()));
              },
              child: Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          'https://cdn.eventil.com/uploads/event/header_image/313825/processed_Facebook_tlo.jpg',
                        ),
                      ),
                    ),
                    height: 140,
                  ),
                  ListTile(
                    title: Text("Flutter Europe"),
                    subtitle: Text("This is some description"),
                    trailing: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 4.0,
                        vertical: 2.0,
                      ),
                      color: Colors.blue[100],
                      child: Text(
                        "Conference",
                        style: TextStyle(color: Colors.blue[800]),
                      ),
                    ),
                    isThreeLine: true,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
