import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => new _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  get appBar => null;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      drawer: Drawer(
        child: ListView(padding: EdgeInsets.zero, children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(color: Color.fromARGB(255, 9, 229, 97)),
            child: Text(
              'Assalamualaikum',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
          ListTile(leading: Icon(Icons.message), title: Text('Doa Harian')),
          ListTile(
              leading: Icon(Icons.account_circle), title: Text('Asmaul Husna')),
          ListTile(leading: Icon(Icons.settings), title: Text('Pengaturan')),
        ]),
      ),
      body: DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
          title: Center(child: Text("Al Quran")),
          backgroundColor: Colors.green,
          bottom: TabBar(
            tabs: [
              Tab(
                text: "Surah",
              ),
              Tab(
                text: "Juz",
              ),
              Tab(
                text: "Bookmark",
              ),
            ],
          ),
        )),
      ),
    ); // Scaffold
  }
}
