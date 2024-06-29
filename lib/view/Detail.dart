import 'package:flutter/material.dart';
import 'package:project_team/view/Homepages.dart';
import 'auth/login_screen.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.person,color: Colors.white70,),
          )
        ],
        title: Center(child: Text('ព័ត៏មានថ្មីៗ',style: TextStyle(color: Colors.white70,fontWeight: FontWeight.bold),)),
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
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue.shade50,
                            border: Border.all(
                              color: Colors.grey.shade300,
                              width: 2.0,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Container(
                                  child: const Text('សេចក្ដីប្រកាសកិច្ចការប្រជុំ',
                                    style: TextStyle(
                                      fontSize: 23,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 390,
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    'កិច្ចប្រជុំបច្ចេកទេសដើម្បីបន្តពិភាក្សាលើសេចក្តីព្រាងអនុក្រឹត្យស្តីពីរបបសន្តិសុខសង្គមផ្នែកប្រាក់សោធនសម្រាប់បុគ្គលទាំងឡាយដែលស្ថិតនៅក្រោមបទប្បញ្ញត្តិនៃច្បាប់ស្តីពីការងារ។',
                                    style: TextStyle(fontSize: 20, color: Colors.black87),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue.shade50,
                            border: Border.all(
                              color: Colors.grey.shade300,
                              width: 2.0,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Container(
                                  child: const Text('ព័ត៌មាន និងព្រឹត្តិការណ៍',
                                    style: TextStyle(
                                        fontSize: 23,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black87
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 390,
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    'កិច្ចប្រជុំគណះកម្មាធិការប្រតិប្ត្តិនៃក្រុមប្រឹក្សាជាតិគាំំពារសង្គម ស្ដីពីការពិនិត្យ និងពិភាក្សាលើសេចក្ដីព្រាងក្របខណ្ឌគោលនយោបាយជាតិគាំពារសង្គម។ '
                                        'កិច្ចប្រជុំគណះកម្មាធិការប្រតិបត្តិនៃក្រុមប្រឹក្សាជាតិគាំងពារសង្គម ស្ដីពីការពិនិត្យ និងពិភាក្សាលើសេចក្ដីព្រាង "គោលនយោងបាយជាតិស្ដីពីការផ្ដល់អាហារតាមសាលារៀន"។',
                                    style: TextStyle(fontSize: 20, color: Colors.black87),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue.shade50,
                            border: Border.all(
                              color: Colors.grey.shade300,
                              width: 2.0,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Container(
                                  child: const Text('សេចក្ដីប្រកាសកិច្ចការប្រជុំ',
                                    style: TextStyle(
                                        fontSize: 23,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black87
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 390,
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    'កិច្ចប្រជុំបច្ចេកទេសដើម្បីបន្តពិភាក្សាលើសេចក្តីព្រាងអនុក្រឹត្យស្តីពីរបបសន្តិសុខសង្គមផ្នែកប្រាក់សោធនសម្រាប់បុគ្គលទាំងឡាយដែលស្ថិតនៅក្រោមបទប្បញ្ញត្តិនៃច្បាប់ស្តីពីការងារ។',
                                    style: TextStyle(fontSize: 20, color: Colors.black87),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  // const Divider(
                  //   color: Colors.black12,
                  //   indent : 10,
                  //   endIndent : 10,
                  // ),
                  // Padding(
                  //   padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 3),
                  //   child: Container(
                  //     child: Row(
                  //       children: [
                  //         Container(
                  //           child: Icon(Icons.calendar_month,color: Colors.black38,size: 20,),
                  //         ),
                  //         const SizedBox(
                  //           width: 10,
                  //         ),
                  //         Container(
                  //             child: const Text('ផុសថ្ងៃ: 12-01-2024',style: TextStyle(fontSize: 16),)
                  //         )
                  //       ],
                  //     ),
                  //   ),
                  // ),
                  // const Divider(
                  //   color: Colors.black12,
                  //   indent : 10,
                  //   endIndent : 10,
                  // ),
                ],
              ),
            ),
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
