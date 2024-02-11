import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'search.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[900],
      appBar: AppBar(
        title: const Text('WorkiFy',
        style: TextStyle(color: Colors.black),),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.grey,
        leading: IconButton(
          icon: const Icon(
            Icons.notifications_none,
            color: Colors.black,
          ),
          onPressed: () {  },
        ),
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children:  const <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('User Name'),
              accountEmail: Text('user@example.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text('U'),
              ),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('Log Out'),
              ),          ],
        ),
      ),
        body:Column(

        children: [
      ListView(
            children: [
          CarouselSlider(
          items: [
          //1st Image of Slider
            Container(
              margin: const EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: const DecorationImage(
                  image: NetworkImage("https://c8.alamy.com/comp/PCYW3A/happy-male-driver-rides-cardriving--trip-taxi-concept-cartoon-vector-illustration-PCYW3A.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),



            //2nd Image of Slider
      Container(
        margin: const EdgeInsets.all(6.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          image: const DecorationImage(
            image: NetworkImage("https://img.freepik.com/premium-vector/chef-preparing-food-kitchen-vector-illustration-flat-style_444663-995.jpg"),
            fit: BoxFit.cover,
          ),
        ),
      ),

      //3rd Image of Slider
      Container(
        margin: const EdgeInsets.all(6.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          image: const DecorationImage(
            image: NetworkImage("https://th.bing.com/th/id/OIP.MJy1DHUUUFFdSPags14VNQHaFN?rs=1&pid=ImgDetMain"),
            fit: BoxFit.cover,
          ),
        ),
      ),

      //4th Image of Slider
      Container(
        margin: const EdgeInsets.all(6.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          image: const DecorationImage(
            image: NetworkImage("https://th.bing.com/th/id/OIP.zUIe_mjeerAZ46R5I8EM-wHaFP?rs=1&pid=ImgDetMain"),
            fit: BoxFit.cover,
          ),
        ),

      ),

      //5th Image of Slider
      Container(
        margin: const EdgeInsets.all(6.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          image: const DecorationImage(
            image: NetworkImage("https://image.freepik.com/free-vector/professional-worker-fixing-bathroom_23-2148656904.jpg"),
            fit: BoxFit.cover,
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
      autoPlayAnimationDuration: const Duration(milliseconds: 500),
      viewportFraction: 0.8,
      ),
      ),
      ],
      ),
    ],
        ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.search),
        onPressed: () => showSearch(context: context, delegate: Search()),
      ),

    );
  }
}