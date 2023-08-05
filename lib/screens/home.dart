// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:shopnet/screens/homePage.dart';
// import 'package:shopnet/screens/profile.dart';
// import 'package:shopnet/screens/shopPage.dart';

// import 'noti.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   List pages = [
//     ShopPage(),
//     NotiicationPage(),
//     ProfilePage(),
//   ];
//   int currentIndex = 1;

//   void onTap(int index) {
//     setState(() {
//       currentIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: pages[currentIndex],
//       bottomNavigationBar: BottomNavigationBar(
//           backgroundColor: Colors.white,
//           currentIndex: currentIndex,
//           onTap: onTap,
//           selectedItemColor: Colors.green,
//           unselectedItemColor: Color.fromARGB(255, 27, 27, 27),
//           elevation: 0,
//           items: [
//             BottomNavigationBarItem(
//               icon: Icon(Icons.home),
//               label: 'Home',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.shopping_bag_outlined),
//               label: 'Shop',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.notifications_none_outlined),
//               label: 'Notiication',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.person_2_outlined),
//               label: 'Proile',
//             ),
//           ]),
//     );
//   }
// }
