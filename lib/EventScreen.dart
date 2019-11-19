import 'package:flutter/material.dart';

class EventScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Flutter Europe"),
              background: Image.asset(
                'images/flutter-europe-header.jpg',
                fit: BoxFit.fitWidth,
              ),
            ),
            expandedHeight: 180,
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                ListTile(
                  title: Text(
                    "Flutter Europe",
                    style: Theme.of(context).textTheme.title,
                  ),
                  subtitle: Text("Description"),
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.calendar_today),
                  title: Text(
                    "23-25 January 2019",
                    style: Theme.of(context).textTheme.subtitle,
                  ),
                ),
                Image.asset(
                  'images/map.png',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
