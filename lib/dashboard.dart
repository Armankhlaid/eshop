import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Armankhalid"),
            accountEmail: Text("arman@xyz"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.blueGrey,
              child: Text("U"),
            )
          ),
          ListTile(
            title: Text("Home"),
            trailing: Icon(Icons.dashboard),
          ),
          ListTile(
            title: Text("Followers"),
            trailing: Icon(Icons.add_box),
          )
          ],
        ),
      ),
    );
  }
}