import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Start My AppBar
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(115),
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12)),
              ),
            ),
            const Positioned(//TO Put Picture On Container
              top: 95,//TO Put Picture On Container
              child: CircleAvatar(
                radius: 53,
                backgroundColor: Colors.amber,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzHQv_th9wq3ivQ1CVk7UZRxhbPq64oQrg5Q&usqp=CAU",
                  ),
                  radius: 50,
                ),
              ),
            ),
          ],
        ),
        
      ),
     //End My AppBar
     //************** */
     //Start My Body
      body: Column(
        children: const [
          SizedBox(
            height: 80,
          ),
          ListTile(
            leading: Icon(
              Icons.ac_unit_sharp,
            ),
            title: Text("wallet"),
          ),
          ListTile(
            leading: Icon(
              Icons.location_on_outlined,
            ),
            title: Text("address"),
          ),
          ListTile(
            leading: Icon(
              Icons.favorite_border,
            ),
            title: Text("favorite"),
          ),
          ListTile(
            leading: Icon(
              Icons.share,
            ),
            title: Text("share code"),
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.person_pin_outlined,
            ),
            title: Text("about mono"),
          ),
          ListTile(
            leading: Icon(
              Icons.call,
            ),
            title: Text("contact us"),
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
            ),
            title: Text("sitings"),
          ),
          ListTile(
            leading: Icon(
              Icons.power_settings_new,
            ),
            title: Text("sign out"),
          ),
        ],
      ),
    //End My Body
    );
  }
}
