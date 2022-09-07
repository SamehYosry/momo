import 'package:flutter/material.dart';
import 'package:monoui/handlerwidget/handlerwidgets.dart';
import 'package:monoui/navigationbarofinteriordesign/handlerbottomnavigationbarofintrodesign.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Start My AppBar
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: const [
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: TextField(
                //Search Text Field
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
        ],
      ),
      //End My AppBar
      body: SingleChildScrollView(
        //to Page scroll
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Categories",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  //Text "See all"&move To Page Of Category
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) =>
                              const BottomNavigationbarOfInteriordesign(),
                        ),
                      );
                    },
                    child: const Text(
                      "See all",
                      style: TextStyle(
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //Start My Categories
            SingleChildScrollView(
              //to Scroll horizontal
              scrollDirection: Axis.horizontal,

              child: Row(
                children: [
                  custtomCatogries(
                      image:
                          'assets/catogriesimages/How-to-draw-tree-5-removebg-preview.png',
                      subTitle: 'Gardens'),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: custtomCatogries(
                        image:
                            'assets/catogriesimages/png-clipart-cartoon-bulb-hand-drawn-bulb-line-removebg-preview.png',
                        subTitle: 'Electricity'),
                  ),
                  custtomCatogries(
                      image: 'assets/catogriesimages/cleaninh.png',
                      subTitle: 'Cleaning'),
                  custtomCatogries(
                      image:
                          'assets/catogriesimages/images__2_-removebg-preview.png',
                      subTitle: 'Plumbic'),
                ],
              ),
            ),
            //End My Categories
            //********************* */
          //Start text  "Offers & packages"& "See all"
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
          //End text  "Offers & packages"& "See all"
          //*************************** */
          //Start Picture of Future
            handlerTabbarWidgetOfMyRequests(
                titleOfButton: "BOOk", colorOfButton: Colors.blue),
              //end Picture of Future
           //***************** */
           //Start Text "Different services"& "See All"
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
               //End Text "Different services"& "See All"
               //********************* */
               //Start Picure Services
            handlerTabbarWidgetOfMyServices(
              textOfButton: "BOOk",
              colorOfButton: Colors.blue,
              imageOffurniture:
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUOvM4cebjW8596lM1Z07uz3otwDSxef7r1A&usqp=CAU",
            ),
         //End Picure Services
          ],
        ),
      ),
    );
  }
//Handler Row Of Catogries
  Widget custtomCatogries({required String image, required String subTitle}) {
    return Column(
      children: [
        SizedBox(
          width: 80,
          height: 80,
          child: Image.asset(color: Colors.blue, fit: BoxFit.fill, image),
        ),
        Text(subTitle),
      ],
    );
  }
}
