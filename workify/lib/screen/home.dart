import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
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
        title: Text('WorkiFy',
          style: TextStyle(
          fontFamily: 'Pacifico',),
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
        body:ListView(
          children: [
        CarouselSlider(
        items: [
        //1st Image of Slider
          Container(
            height: 240.0,
            width: double.infinity,
            color: Colors.blue[50],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Driver",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),



          //2nd Image of Slider
    Container(
    height: 240.0,
      width: double.infinity, // Set the width to fill the available space
    color: Colors.blue[50],
    child: Align(
    alignment: Alignment.center,
    child: Text(
    "Data Entry or Virtual Assistant",
    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    ),
    ),
    ),

    //3rd Image of Slider
    Container(
    height: 240.0,
      width: double.infinity, // Set the width to fill the available space
    color: Colors.blue[50],
    child: Align(
    alignment: Alignment.center,
    child: Text(
    "Babysitter",
    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    ),
    ),
    ),

    //4th Image of Slider
    Container(
    height: 240.0,
      width: double.infinity, // Set the width to fill the available space
    color: Colors.blue[50],
    child: Align(
    alignment: Alignment.center,
    child: Text(
    "Cook",
    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    ),
    ),
    ),

    //5th Image of Slider
    Container(
    height: 240.0,
      width: double.infinity, // Set the width to fill the available space
    color: Colors.blue[50],
    child: Align(
    alignment: Alignment.center,
    child: Text(
    "Tutoring",
    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    ),
    ),
    ),

    ],

    //Slider Container properties
    options: CarouselOptions(
    height: 180.0,
    enlargeCenterPage: true,
    autoPlay: true,
    aspectRatio: 16 / 9,
    autoPlayCurve: Curves.fastOutSlowIn,
    enableInfiniteScroll: true,
    autoPlayAnimationDuration: Duration(milliseconds: 800),
    viewportFraction: 0.8,
    ),
    ),
    ],
    ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.search),
        onPressed: () => showSearch(context: context, delegate: Search()),
      ),
    );
  }
}