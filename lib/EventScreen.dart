import 'package:flutter/material.dart';

class EventScreen extends StatefulWidget {
  @override
  _EventScreenState createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
  int _currentIndex = 0;
  final List<Widget> _tabs = [
    EventOverviewWidget(),
    EventAgendaWidget(),
  ];

  void onTabTapped(int index) {
    setState(() {
     _currentIndex = index;
   });
  }

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
          _tabs[_currentIndex],
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTabTapped, 
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey[400],
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_today,
            ),
            title: Text(
              "Overview",
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_today,
            ),
            title: Text(
              "Agenda",
            ),
          ),
        ],
      ),
    );
  }
}

class EventAgendaWidget extends StatelessWidget {
  const EventAgendaWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        [ListTile(
            title: Text('Agenda')),]));
  }
}

class EventOverviewWidget extends StatelessWidget {
  const EventOverviewWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
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
          ListTile(
            leading: Icon(Icons.calendar_today),
            title: Text(
              "23-25 January 2019",
              style: Theme.of(context).textTheme.subtitle,
            ),
          ),
          ListTile(
            leading: Icon(Icons.calendar_today),
            title: Text(
              "23-25 January 2019",
              style: Theme.of(context).textTheme.subtitle,
            ),
          ),
          ListTile(
            leading: Icon(Icons.calendar_today),
            title: Text(
              "Curabitur pellentesque, mi sed molestie auctor, diam est aliquam nisl, ac congue diam dui sagittis dolor. Mauris lobortis maximus erat congue placerat. Etiam venenatis mi in sem lacinia ullamcorper. Pellentesque mattis convallis odio quis finibus. Duis interdum urna ac dui iaculis porta. Curabitur rhoncus nisl tincidunt turpis ultricies, ac auctor ex posuere. Suspendisse mattis imperdiet nisl ut iaculis. Proin lacus urna, eleifend a ipsum ut, tincidunt dapibus turpis.",
              style: Theme.of(context).textTheme.subtitle,
            ),
          ),
        ],
      ),
    );
  }
}
