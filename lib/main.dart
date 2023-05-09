import 'package:flutter/material.dart';
import 'package:netclan/screens/explore.dart';
import 'package:netclan/screens/refine.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  Widget retbody() {
    if (_selectedIndex == 0) {
      return Refine();
    } else if (_selectedIndex == 1) {
      return Explore();
    } else {
      return Container(
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: Text("Work in Progress"),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        //primarySwatch: Color.fromARGB(255, 28, 80, 75),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: AppBarTheme(
          color: Color.fromARGB(255, 1, 50, 77),
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {},
            ),
          ],
          title: Text("Netcat Explore"),
        ),
        drawer: Drawer(
          child: Scaffold(
            appBar: AppBar(
              title: Text("Drawer"),
            ),
          ),
        ),
        body: retbody(),
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.black,
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
                print(index);
              });
            },
            currentIndex: _selectedIndex,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.checklist_outlined,
                    color: Colors.black,
                  ),
                  label: "Refine"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.remove_red_eye,
                    color: Colors.black,
                  ),
                  label: "Explore"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.network_check_outlined,
                    color: Colors.black,
                  ),
                  label: "Network"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.chat_bubble_outline,
                    color: Colors.black,
                  ),
                  label: "Chat"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.contacts,
                    color: Colors.black,
                  ),
                  label: "Contacts"),
            ]),
      ),
    );
  }
}
