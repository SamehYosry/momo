import 'package:flutter/material.dart';
import 'package:monoui/handlerwidget/handlerwidgets.dart';
import 'package:monoui/navigationbarofinteriordesign/pagesOfNavigation/galarypage.dart';
import 'package:monoui/navigationbarofinteriordesign/pagesOfNavigation/home.dart';
import 'package:monoui/navigationbarofinteriordesign/pagesOfNavigation/profile.dart';
import 'package:monoui/navigationbarofinteriordesign/pagesOfNavigation/requests.dart';
import 'package:monoui/navigationbarofinteriordesign/pagesOfNavigation/services.dart';

class BottomNavigationbarOfInteriordesign extends StatefulWidget {
  const BottomNavigationbarOfInteriordesign({super.key});

  @override
  State<BottomNavigationbarOfInteriordesign> createState() =>
      _BottomNavigationbarOfInteriordesignState();
}

class _BottomNavigationbarOfInteriordesignState
    extends State<BottomNavigationbarOfInteriordesign> {
  //Start Handler bottomNavBarItems "Icons"&Label
  List<BottomNavigationBarItem> bottomNavBarItems = [
    const BottomNavigationBarItem(
      icon: Icon(Icons.person_outline_outlined),
      label: 'حسابي',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.shopping_cart_outlined),
      label: 'طلباتى',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.home_repair_service_outlined),
      label: 'خدماتى',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.image),
      label: 'المعرض',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.home_filled),
      label: 'الرئيسيه',
    ),
  ];
  //End Handler bottomNavBarItems "Icons"&Label
  //************************************ */
  //Start Handler bottomNavBarPages
  List<Widget> bottomNavBarPages = [
    const Profile(),
    const Requests(),
    const Services(),
    const Galary(),
    const Home(),
  ];
  //End Handler bottomNavBarPages
  //*********************************** */
  //Start  SelectedPage Value
  int selectedPage = 4;
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
    return SafeArea(
      child: DefaultTabController(
        length: myTabs.length,
        child: Scaffold(
          //Start My AppBar
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(115),
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    //Start text "Interior design"
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Interior design",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    ),
                   //End text "Interior design"
                   //******************* */
                   //Start My TabBar
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TabBar(
                          indicator: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          isScrollable: true,
                          unselectedLabelColor:
                              const Color.fromARGB(153, 126, 59, 59),
                          labelColor: Colors.white,
                          labelStyle: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          tabs: myTabs),
                    ),
                   //End My TabBar
                  ],
                ),
              ),
            ),
           //End My AppBar
            bottomNavigationBar: BottomNavigationBar(
              items: bottomNavBarItems,//My Items (icons & lable)
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
              onTap: onBottomNavBarChanged,//To Changed Pages
            ),
            body: bottomNavBarPages[selectedPage]),
      ),
    );
  }
}
