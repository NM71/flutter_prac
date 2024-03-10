import 'package:do_list/pages/home_page.dart';
import 'package:do_list/pages/profile.dart';
import 'package:do_list/pages/second_page.dart';
import 'package:do_list/pages/settings_page.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  FirstPage({super.key});
  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  //method which updates the selectedIndex value
  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // this keeps track of the current page to display
  int _selectedIndex = 0;

  // the pages we have in our app
  final List _pages = [
    //homepage
    HomePage(),
    //profile page
    Profile(),
    //settingsPage
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      appBar: AppBar(
        backgroundColor: Colors.teal,
        iconTheme: IconThemeData(color: Colors.white),
        title: const Center(
          child: Text(
            'First Page',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
      ),
      // ListView Builder
      // home: Scaffold(
      // body: ListView.builder(
      //   itemCount: names.length,
      //   itemBuilder: (context, index) => ListTile(
      //     title: Text(index.toString() + " : " + names[index]),
      //   ),
      // ),

//GridView Builder
      // body: GridView.builder(
      //   itemCount: 10,
      //   gridDelegate:
      //       SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
      //   itemBuilder: (context, index) => Container(
      //     color: Colors.deepPurple,
      //     margin: EdgeInsets.all(10),
      //   ),
      // ),

//Stacks
      // body: Stack(
      //   alignment: Alignment.center,
      //   children: [
      //     //big box
      //     Container(height: 300,width: 300,color: Colors.deepPurple,),
      //     //medium box
      //     Container(height: 200,width: 200,color: Colors.deepPurple[400],),
      //     //   small box
      //     Container(height: 100,width: 100,color: Colors.deepPurple[200],),
      //   ],
      // ),
      // body: Center(
      //   child: GestureDetector(
      //     onTap: userTapped,
      //     child: Container(
      //       height: 300,
      //       width: 300,
      //       child: Center(
      //           child: Text(
      //         'Hit Me',
      //         style: TextStyle(color: Colors.white, fontSize: 30),
      //       )),
      //       decoration: BoxDecoration(
      //         borderRadius: BorderRadius.circular(20),
      //         color: Colors.deepPurple,
      //       ),
      //     ),
      //   ),
      // ),
      // ),

//Drawer
      // drawer: Drawer(
      //   backgroundColor: Colors.teal,
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.start,
      //     children: [
      //       DrawerHeader(
      //         child: Icon(
      //           Icons.favorite,
      //           color: Colors.white,
      //           size: 30,
      //         ),
      //       ),
      //       ListTile(
      //         iconColor: Colors.white,
      //         leading: Icon(Icons.home),
      //         title: Text(
      //           'H O M E',
      //           style: TextStyle(color: Colors.white),
      //         ),
      //         onTap: (){
      //           Navigator.pop(context);
      //           Navigator.pushNamed(context, '/home');
      //         },
      //       ),
      //       ListTile(
      //         iconColor: Colors.white,
      //         leading: Icon(Icons.person),
      //         title: Text(
      //           'P R O F I L E',
      //           style: TextStyle(color: Colors.white),
      //         ),
      //         onTap: (){
      //           Navigator.pushNamed(context, '/profile');
      //         },
      //       ),
      //       ListTile(
      //         iconColor: Colors.white,
      //         leading: Icon(Icons.settings),
      //         title: Text(
      //           'S E T T I N G S',
      //           style: TextStyle(color: Colors.white),
      //         ),
      //         onTap: (){
      //           Navigator.pushNamed(context, '/settings');
      //         },
      //       ),
      //     ],
      //   ),
      // ),

      // Bottom Nav Bar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        // backgroundColor: Colors.teal,
        items: const [
          //profile
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profie',
          ),
          //home
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          //settings
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          )
        ],
      ),
    );
  }
}
