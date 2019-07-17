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
            ),
          ),
          ListTile(
            title: Text("Pending Orfers"),
            trailing: Icon(Icons.add_alert,
            color: Colors.red,),
          ),
          ListTile(
            title: Text("Completed Orders"),
            trailing: Icon(Icons.done_all,
            color: Colors.green),
          ),
          ListTile(
            title: Text("Pending Bills"),
            trailing: Icon(Icons.attach_money,
            color: Colors.red,),
          ),
          ListTile(
            title: Text("Notifications"),
            trailing: Icon(Icons.notifications,
            color: Colors.blue,),
          ),
           ListTile(
            title: Text("Settings"),
            trailing: Icon(Icons.settings,
            color: Colors.black,),
          )
          ],
        ),
      ),
       body: Container(
        
         height: 500,
         width: 500,
         color: Colors.white,
       child: Column(
         children: <Widget>[
              Hero(
           tag: "flutter",
           
           child: FlutterLogo(
             size: 70.0, 
           ),
         ),
          Container(
            height: 390,
          
            child: Column(
               
              children: <Widget>[
           Padding(
              padding: EdgeInsets.only(top: 60),
           ) ,     
                Row(
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(left: 60)
                ),
                Text("Pending Orders",
                style: TextStyle(fontSize: 20.0,fontWeight:FontWeight.bold),
                ),
                Padding(padding: EdgeInsets.only(left: 100)),
                Icon(Icons.notification_important,
                size: 30,
                color: Colors.amberAccent,
                ),
                  ],
                ),
                 Padding(
              padding: EdgeInsets.only(top: 60),
           ) , 
                  Row(
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(left: 60)
                ),
                Text("Completed Orders",
                style: TextStyle(fontSize: 20.0,fontWeight:FontWeight.bold),
                ),
                Padding(padding: EdgeInsets.only(left: 80)),
                Icon(Icons.notification_important,
                size: 30,
                color: Colors.amberAccent,
                ),
                  ],
                ),
                 Padding(
              padding: EdgeInsets.only(top: 60),
           ) , 
                 Row(
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(left: 60,)
                ),
                Text("Notificationss",
                style: TextStyle(fontSize: 20.0,fontWeight:FontWeight.bold),
                ),
                Padding(padding: EdgeInsets.only(left: 127)),
                Icon(Icons.notification_important,
                size: 30,
                color: Colors.amberAccent,
                ),
                  ],
                ),
              ],
            ),
            
          )
         ],
       ),
       ),
    );
  }
}

