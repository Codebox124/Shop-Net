import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shopnet/screens/noti.dart';
import 'package:shopnet/screens/profile.dart';
import 'package:shopnet/screens/shopPage.dart';
import 'loginpage.dart';

class HomePage extends StatefulWidget {
  final User user;
  const HomePage({super.key, required this.user});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List pages = [
    ShopPage(),
    NotiicationPage(),
    ProfilePage(),
  ];
  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  late User _currentUser;

  @override
  void initState() {
    _currentUser = widget.user;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: currentIndex,
          onTap: onTap,
          selectedItemColor: Colors.green,
          unselectedItemColor: Color.fromARGB(255, 27, 27, 27),
          elevation: 0,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined),
              label: 'Shop',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications_none_outlined),
              label: 'Notiication',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined),
              label: 'Proile',
            ),
          ]),
      backgroundColor: Color.fromARGB(232, 255, 255, 255),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Welcome Back!",
                          style: TextStyle(
                            fontSize: 13,
                          )),
                      Text(
                        " ${_currentUser.displayName}",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    child: Image.asset('assets/imgs/Ellipse 1 (1).png'),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Trade-in and save",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                           SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Enjoy Great unfront saving\nEnjoy Great unfront saving ",
                            style: TextStyle(
                              fontSize: 12,
                     
                            ),
                          ),
                           SizedBox(
                            height: 20,
                          ),
                          Container(
                           decoration: BoxDecoration(
                             color: const Color.fromARGB(255, 88, 241, 93),
                             borderRadius: BorderRadius.circular(10)
                           ),
                            height: 40,
                            width: 150,
                            child: Center(
                              child: Text("Learn More"),
                            ),
                          )
                        ],
                      ),
                      Image.asset("assets/imgs/Rectangle 12.png")
                    ],
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: () async {
                    await FirebaseAuth.instance.signOut();

                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ),
                    );
                  },
                  child: Text('Sign out'))
            ],
          ),
        ),
      ),
    );
  }
}
