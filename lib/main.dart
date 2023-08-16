import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
          elevation: 25,
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text('MANOJ BM'),
                accountEmail: Text('iammanoj.dev@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text('Manoj'),
                ),
              ),
              ListTile(
                title: Text('Personal'),
                leading: Icon(Icons.people),
              ),
              Divider(
                height: 10,
              ),
              ListTile(
                title: Text('Academics'),
                leading: Icon(Icons.menu_book),
              ),
              Divider(
                height: 10,
              ),
              ListTile(
                title: Text('Family'),
                leading: Icon(Icons.family_restroom),
              ),
              Divider(
                height: 10,
              ),
              ListTile(
                title: Text('Sports'),
                leading: Icon(Icons.sports_cricket),
              ),
              Divider(
                height: 10,
              ),
              ListTile(
                title: Text('Job'),
                leading: Icon(Icons.work),
              ),
              Divider(
                height: 10,
              ),
              ListTile(
                title: Text('Friends'),
                leading: Icon(Icons.emoji_people_sharp),
              ),
              Divider(
                height: 10,
              )
            ],
          )),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Freedom_app'),
      ),
      body: const Column(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (val) {
          setState(() {
            _currentIndex = val;
          });
        },
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            label: 'home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'search',
            icon: Icon(Icons.search),
          ),BottomNavigationBarItem(
            label: 'Friends',
            icon: Icon(Icons. emoji_people_sharp))
        ],
      ),
    );
  }
}
