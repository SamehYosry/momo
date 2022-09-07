import 'package:flutter/material.dart';
import 'package:monoui/mynavigationbar/pagesOfNavigationBar/home.dart';
import 'package:monoui/mynavigationbar/pagesOfNavigationBar/myrequests.dart';
import 'package:monoui/mynavigationbar/pagesOfNavigationBar/myservices.dart';
import 'package:monoui/mynavigationbar/pagesOfNavigationBar/profile.dart';

class MyNavigationBarPages extends StatefulWidget {
  const MyNavigationBarPages({super.key});

  @override
  State<MyNavigationBarPages> createState() => _MyNavigationBarPagesState();
}

class _MyNavigationBarPagesState extends State<MyNavigationBarPages> {
  //Start Handler bottomNavBarItems "Icons"&Label
  List<BottomNavigationBarItem> bottomNavBarItems = [
    const BottomNavigationBarItem(
      icon: Icon(Icons.home_filled),
      label: 'Home',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.home_repair_service_outlined),
      label: 'My services',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.shopping_cart_outlined),
      label: 'My requests',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.person_outline_outlined),
      label: 'Profile',
    ),
  ];
  //End Handler bottomNavBarItems "Icons"&Label
  //************************************ */
  //Start Handler bottomNavBarPages
  List<Widget> bottomNavBarPages = [
    const HomePage(),
    const MyServicesPage(),
    const MyRequestspage(),
    const ProfilePage()
  ];
  //End Handler bottomNavBarPages
  //*********************************** */
  //Start  SelectedPage Value
  int selectedPage = 0;
  //End  SelectedPage Value
  //********************* */
  //Start Handler Function to Change Pages
  void onBottomNavBarChanged(value) {
    setState(() {
      selectedPage = value;
    });
  }
  //End Handler Function to Change Pages

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: bottomNavBarItems, //My Items (icons & lable)
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.white60,
        selectedItemColor: Colors.red,
        elevation: 20,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 15,
        selectedIconTheme: const IconThemeData(size: 35),
        currentIndex: selectedPage,
        onTap: onBottomNavBarChanged, //To Changed Pages
      ),
      body: bottomNavBarPages[selectedPage],
    );
  }
}
