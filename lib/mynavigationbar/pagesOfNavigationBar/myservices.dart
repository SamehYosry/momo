import 'package:flutter/material.dart';
import 'package:monoui/handlerwidget/handlerwidgets.dart';

class MyServicesPage extends StatefulWidget {
  const MyServicesPage({super.key});

  @override
  State<MyServicesPage> createState() => _MyServicesPageState();
}

class _MyServicesPageState extends State<MyServicesPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      // Length of Tabbar
      length: mytabs.length,
      child: Scaffold(
        //Start My AppBar
        appBar: AppBar(
          backgroundColor: Colors.white12,
          foregroundColor: Colors.black,
          elevation: 0,
          title: const Text("my services"),
          centerTitle: true,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 25,
              height: 25,
              color: Colors.white,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_back_ios_new_outlined),
              ),
            ),
          ),
          actions: [
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.home_repair_service_outlined),
                ),
                const Positioned(
                  top: 23,
                  right: 10,
                  child: CircleAvatar(
                    radius: 4,
                    backgroundColor: Colors.amber,
                  ),
                )
              ],
            ),
          ],
        ),
        //End My AppBar
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
                  //Start Wating tab bar
                  ListView.builder(
                    itemCount: 4,
                    itemBuilder: (context, index) =>
                        handlerTabbarWidgetOfMyServices(
                      colorOfButton: Colors.blue,
                      textOfButton: "BOOk",
                      imageOffurniture:
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUOvM4cebjW8596lM1Z07uz3otwDSxef7r1A&usqp=CAU",
                    ),
                  ),
                  //End Wating tab bar
                  //********************* */
                  //Start Working tab bar
                  ListView.builder(
                    itemCount: 3,
                    itemBuilder: (context, index) =>
                        handlerTabbarWidgetOfMyServices(
                      textOfButton: "working",
                      colorOfButton: Colors.blue,
                      imageOffurniture:
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUOvM4cebjW8596lM1Z07uz3otwDSxef7r1A&usqp=CAU",
                    ),
                  ),
                  //End Wating tab bar
                  //********************* */
                  //Start Finished tab bar
                  ListView.builder(
                    itemCount: 6,
                    itemBuilder: (context, index) =>
                        handlerTabbarWidgetOfMyServices(
                      textOfButton: "finished",
                      colorOfButton: Colors.red.shade900,
                      imageOffurniture:
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUOvM4cebjW8596lM1Z07uz3otwDSxef7r1A&usqp=CAU",
                    ),
                  ),
                  //End Finished tab bar
                ],
              ),
            ),
            // Button Of "Add A New Service"
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: cusstomButton(
                  title: "+ add a new service",
                  backgroundColor: Colors.blue,
                  colorofText: Colors.white,
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
