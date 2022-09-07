import 'package:flutter/material.dart';
import 'package:monoui/handlerwidget/handlerwidgets.dart';

class MyRequestspage extends StatelessWidget {
  const MyRequestspage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      // Length of Tabbar
      length: mytabs.length,
      child: Scaffold(
        //Start My AppBar
          appBar: AppBar(
            foregroundColor: Colors.black,
            backgroundColor: Colors.white12,
            elevation: 0,
            //iconButton of Notification
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications_none_outlined),
            ),
            actions: [
              //Text Field Search
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 60),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black26, width: .5),
                      ),
                      suffixIcon: Icon(Icons.menu_outlined),
                      prefixIcon: Icon(Icons.search),
                      hintText: "search",
                    ),
                  ),
                ),
              ),
              // Icon OF Message
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.messenger_outline),
              ),
            ],
          ),
         //End My AppBar
         //******************* */
         //Start Body
          body: Column(
            children: [
              TabBar(
                  isScrollable: true,
                  unselectedLabelColor: const Color.fromARGB(153, 126, 59, 59),
                  labelColor: Colors.blue,
                  labelStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  tabs: mytabs),
              Expanded(
                child: TabBarView(
                  children: [
                    //Wating tab bar
                    handlerTabbarWidgetOfMyRequests(
                        colorOfButton: Colors.blue.shade200,
                        titleOfButton: "On hold"),
                    //Working tab bar
                    handlerTabbarWidgetOfMyRequests(
                        colorOfButton: Colors.blue, titleOfButton: "Ongoing"),
                    //Finished tab bar
                    handlerTabbarWidgetOfMyRequests(
                        colorOfButton: Colors.red.shade700,
                        titleOfButton: "cancelled"),
                  ],
                ),
              ),
            ],
          )),
    //End Body
    );
  }
}
