import 'package:flutter/material.dart';
import 'search.dart';
import 'splash.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WorkiFy'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children:  <Widget>[
            const UserAccountsDrawerHeader(
              accountName: Text('User Name'),
              accountEmail: Text('user@example.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text('U'),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.account_circle),
              title: const Text('Profile'),
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
            ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text('Log Out'),
              ),          ],
        ),
      ),
      //body:
     // floatingActionButton: FloatingActionButton(
       // child: Icon(Icons.search),
       // onPressed: () => showSearch(context: context, delegate: Search()),
      //),

    );
  }
}