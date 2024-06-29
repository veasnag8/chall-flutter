import 'package:flutter/material.dart';
import 'Detail.dart';
import 'Homepages.dart';
import 'auth/login_screen.dart';

class Homepages1 extends StatefulWidget {
  const Homepages1({super.key});

  @override
  State<Homepages1> createState() => _Homepages1State();
}

class _Homepages1State extends State<Homepages1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.person,color: Colors.white70,),
          )
        ],
        title: Center(child: Text('កម្មវិធីការងារ',style: TextStyle(color: Colors.white70,fontWeight: FontWeight.bold),)),
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
                    backgroundImage: AssetImage('assets/Icons/admin.png',), // Update with your image path
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
            padding: const EdgeInsets.only(left: 5,right: 5,top: 10),
            child: Column(
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 250,
                        width: 400,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue.shade50,
                          border: Border.all(
                            color: Colors.blueGrey.shade200,
                            width: 2.0,
                          ),
                        ),
                        child: Column(
                          children: [
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 2, right: 5),
                                    child: Container(
                                      child: const CircleAvatar(
                                        backgroundImage: AssetImage('assets/staff1.jpg'),
                                        radius: 60,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 5),
                                    child: Container(
                                      height: 200,
                                      width: 260,
                                      // color: Colors.green,
                                      padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 8),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Container(
                                            child: Row(
                                              children: [
                                                Expanded(
                                                  child: RichText(
                                                    textAlign: TextAlign.left,
                                                    text: const TextSpan(
                                                      children: [
                                                        TextSpan(
                                                          text: 'កិច្ចប្រជុំ៖',
                                                          style: TextStyle(
                                                            fontSize: 17,
                                                            fontWeight: FontWeight.bold,
                                                            color: Colors.black87,
                                                          ),
                                                        ),
                                                        TextSpan(
                                                          text: ' អំពីការថែសួនក្នុងក្រុង',
                                                          style: TextStyle(
                                                            fontSize: 17,
                                                            color: Colors.black87,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 5),
                                          Container(
                                            child: Row(
                                              children: [
                                                Expanded(
                                                  child: RichText(
                                                    textAlign: TextAlign.left,
                                                    text: const TextSpan(
                                                      children: [
                                                        TextSpan(
                                                          text: 'ដឹកនាំដោយ៖',
                                                          style: TextStyle(
                                                            fontSize: 17,
                                                            fontWeight: FontWeight.bold,
                                                            color: Colors.black87,
                                                          ),
                                                        ),
                                                        TextSpan(
                                                          text: ' លោក ..... តួនាទី....',
                                                          style: TextStyle(
                                                            fontSize: 17,
                                                            color: Colors.black87,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 5),
                                          Container(
                                            child: Row(
                                              children: [
                                                Expanded(
                                                  child: RichText(
                                                    textAlign: TextAlign.left,
                                                    text: const TextSpan(
                                                      children: [
                                                        TextSpan(
                                                          text: 'ពេលវេលា៖',
                                                          style: TextStyle(
                                                            fontSize: 17,
                                                            fontWeight: FontWeight.bold,
                                                            color: Colors.black87,
                                                          ),
                                                        ),
                                                        TextSpan(
                                                          text: ' ថ្ងៃច័ន្ទ ៣ រោច ខែជេស្ឋ ឆ្នាំរោង ឆស័ក ពុទ្ធសករាជ ២៥៦៨ ថ្ងៃទី២៤ ខែមិថុនា ឆ្នាំ២០២៤',
                                                          style: TextStyle(
                                                            fontSize: 17,
                                                            color: Colors.black87,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 5),
                                          Container(
                                            child: Row(
                                              children: [
                                                Expanded(
                                                  child: RichText(
                                                    textAlign: TextAlign.left,
                                                    text: const TextSpan(
                                                      children: [
                                                        TextSpan(
                                                          text: 'បន្ទប់ប្រជុំ៖',
                                                          style: TextStyle(
                                                            fontSize: 17,
                                                            fontWeight: FontWeight.bold,
                                                            color: Colors.black87,
                                                          ),
                                                        ),
                                                        TextSpan(
                                                          text: ' វាលវែង',
                                                          style: TextStyle(
                                                            fontSize: 17,
                                                            color: Colors.black87,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 5),
                                          Container(
                                            child: Row(
                                              children: [
                                                Expanded(
                                                  child: RichText(
                                                    textAlign: TextAlign.right,
                                                    text: const TextSpan(
                                                      children: [
                                                        TextSpan(
                                                          text: 'ទាញយកឯកសារ',
                                                          style: TextStyle(
                                                            fontSize: 17,
                                                            color: Colors.black87,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Row(
                                      children: [
                                        Container(
                                          child: Text('មិនទាន់ប្រជុំ',style: TextStyle(fontSize: 16),),
                                        ),
                                        Container(
                                          child: Icon(Icons.check_box_outline_blank_outlined,size: 20,),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 8),
                                  Container(
                                    child: Row(
                                      children: [
                                        Container(
                                          child: Text('ប្រជុំរួច',style: TextStyle(fontSize: 16)),
                                        ),
                                        Container(
                                          child: Icon(Icons.check_box_outlined,size: 20,),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
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
