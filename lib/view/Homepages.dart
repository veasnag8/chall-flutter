import 'package:flutter/material.dart';
import 'Detail.dart';
import 'auth/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Homepages(),
    );
  }
}

class Homepages extends StatefulWidget {
  const Homepages({super.key});

  @override
  _HomepagesState createState() => _HomepagesState();
}

class _HomepagesState extends State<Homepages> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home Page'),
    DetailPage(), // Ensure you have this page created
    Text('Profile Page'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.person,
              color: Colors.white70,
            ),
          )
        ],
        title: const Center(
          child: Text(
            'ទំព័រដើម',
            style: TextStyle(
              color: Colors.white70,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blueGrey,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(
                      'assets/Icons/admin.png',
                    ), // Update with your image path
                  ),
                  SizedBox(height: 10),
                  Text(
                    'admin',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    'admin@gmail.com',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Login'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(), // Replace SignIn() with your actual sign-in screen widget
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 230,
                          width: 390,
                          child: Image.asset(
                            'assets/staff2.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.black12,
                    width: 2.0,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Container(
                              child: const Text(
                                'សេចក្តីប្រកាសព័ត៌មាន',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Expanded(
                        child: Text(
                          'កិច្ចប្រជុំគណះកម្មាធិការប្រតិប្ត្តិនៃក្រុមប្រឹក្សាជាតិគាំំពារសង្គម ស្ដីពីការពិនិត្យ និងពិភាក្សាលើសេចក្ដីព្រាងក្របខណ្ឌគោលនយោបាយជាតិគាំពារសង្គម។ '
                              'កិច្ចប្រជុំគណះកម្មាធិការប្រតិបត្តិនៃក្រុមប្រឹក្សាជាតិគាំងពារសង្គម ស្ដីពីការពិនិត្យ និងពិភាក្សាលើសេចក្ដីព្រាង "គោលនយោងបាយជាតិស្ដីពីការផ្ដល់អាហារតាមសាលារៀន"។...',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Container(
                          child: Row(
                            children: [
                              Container(
                                child: Icon(
                                  Icons.calendar_month,
                                  color: Colors.black38,
                                  size: 20,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                child: const Text(
                                  'ផុសថ្ងៃ: 12-01-2024',
                                  style: TextStyle(fontSize: 16),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blueGrey, // Set the background color here
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.home, size: 30, color: Colors.white70,),
              onPressed: () {
                // Implement onPressed action
              },
            ),
            IconButton(
              icon: Icon(Icons.feed, size: 30,color: Colors.white70,),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailPage()),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.notifications, size: 30,color: Colors.white70,),
              onPressed: () {
                // Implement onPressed action
              },
            ),
            IconButton(
              icon: Icon(Icons.person, size: 30,color: Colors.white70,),
              onPressed: () {
                // Implement onPressed action
              },
            ),
          ],
        ),
      ),
    );
  }
}