import 'package:flutter/material.dart';
import 'package:monoui/handlerwidget/handlerwidgets.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        //To Page scroll
        child: Column(
          children: [
            //start text "Different services" & "See all"
            Padding(
              padding:
                  const EdgeInsets.only(top: 15, left: 8, right: 8, bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Different services",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(color: Colors.black54),
                  ),
                ],
              ),
            ),
            //End text "Different services" & "See all"
            //************************** */
            //Handler Row Of Future details
            handlerTabbarWidgetOfMyServices(
              textOfButton: "BOOk",
              colorOfButton: Colors.blue,
              imageOffurniture:
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUOvM4cebjW8596lM1Z07uz3otwDSxef7r1A&usqp=CAU",
            ),
            handlerTabbarWidgetOfMyServices(
              textOfButton: "BOOk",
              colorOfButton: Colors.blue,
              imageOffurniture:
                  "https://www.sayidaty.net/sites/default/files/styles/900_scale/public/2017/11/07/3045246-1961049494.jpg",
            ),
            handlerTabbarWidgetOfMyServices(
              textOfButton: "BOOk",
              colorOfButton: Colors.blue,
              imageOffurniture:
                  "https://www.sayidaty.net/sites/default/files/styles/900_scale/public/2017/11/07/3045246-1961049494.jpg",
            ),
            //Start Text "Offers & packages"& "See all"
            Padding(
              padding:
                  const EdgeInsets.only(top: 15, left: 8, right: 8, bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Offers & packages",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(color: Colors.black54),
                  )
                ],
              ),
            ),
            //End Text "Offers & packages"& "See all"
            //************************** */

            handlerTabbarWidgetOfMyRequests(
                titleOfButton: "BOOk", colorOfButton: Colors.blue),
          ],
        ),
      ),
    );
  }
}
