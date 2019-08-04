import 'package:flutter/material.dart';

class Customerdashboard extends StatefulWidget {
  @override
  _CustomerdashboardState createState() => _CustomerdashboardState();
}

class _CustomerdashboardState extends State<Customerdashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center
        (child: Text("Dashboard")),
      ),
      drawer: Drawer(),
      body: SingleChildScrollView(
              child: Center(
          child: Container(
            color: Colors.white,
            child: Column(
              children: <Widget>[
                
                Padding(
                  padding: EdgeInsets.only(top: 25, left: 5, right: 5),
                  child: Row(
                    children: <Widget>[
                      Card(
                        elevation: 7,
                          child: InkWell(
                            onTap: () {},
                            child: Column(
                              children: <Widget>[
                                Image.asset(
                                  "images/pen.jpg",
                                  width: 190,
                                  height: 200,
                                ),
                                Text(
                                  "pen",
                                  style: TextStyle(
                                      fontSize: 18, fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Price : 500 Pkr",
                                  style: TextStyle(color: Colors.red),
                                )
                              ],
                            ),
                          ),
                          semanticContainer: false,

                          // color: Colors.blue,
                          borderOnForeground: false),
                      Padding(
                        padding: EdgeInsets.only(left: 0),
                      ),
                      Card(elevation: 7,
                        child: InkWell(
                          onTap: () {},
                          child: Column(
                            children: <Widget>[
                              Image.asset(
                                "images/pen.jpg",
                                width: 190,
                                height: 200,
                              ),
                              Text(
                                "pen",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Price : 500 Pkr",
                                style: TextStyle(color: Colors.red),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ), //1st row ends here

                Padding(
                  padding: EdgeInsets.only(top: 25, left: 5, right: 5),
                  child: Row(
                    children: <Widget>[
                      Card(
                        elevation: 7,
                        child: InkWell(
                          onTap: () {},
                          child: Column(
                            children: <Widget>[
                              Image.asset(
                                "images/pen.jpg",
                                width: 190,
                                height: 200,
                              ),
                              Text(
                                "pen",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Price : 500 Pkr",
                                style: TextStyle(color: Colors.red),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 0),
                      ),
                      Card(
                        elevation: 7,
                        child: InkWell(
                          onTap: () {},
                          child: Column(
                            children: <Widget>[
                              Image.asset(
                                "images/pen.jpg",
                                width: 190,
                                height: 200,
                              ),
                              Text(
                                "pen",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Price : 500 Pkr",
                                style: TextStyle(color: Colors.red),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.add_shopping_cart,
                  color: Color.fromARGB(255, 0, 0, 0)),
              title: new Text('Buy')),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart,
                  color: Color.fromARGB(255, 0, 0, 0)),
              title: new Text('Cart')),
        ],
      ),
    );
  }
}
