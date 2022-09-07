import 'package:flutter/material.dart';

//Start Change Language English to Arabic
bool convertToArabic = false;
//End Change Language English to Arabic
/// *************************************** */
//Start Name  Tab Bar of Myseevices&Myrequests
List<Widget> mytabs = [
  const Tab(
    text: 'wating',
  ),
  const Tab(
    text: ('working'),
  ),
  const Tab(
    text: 'Finsished',
  ),
];
//End Name  Tab Bar of Myseevices&Myrequests
/// *********************************** */
// Start Name  Tab Bar of Interior design
List<Widget> myTabs = [
  const Tab(
    text: 'Design of children\'s rooms',
  ),
  const Tab(
    text: ('Living room design'),
  ),
  const Tab(
    text: 'Live',
  ),
];
// End Name  Tab Bar of Interior design
//************************************ */
//Start handler  text field of phonenumber &password&email
custtomTextField(
    {required TextInputType textInputType,
    required IconData iconData,
    required bool obscureText,
    required String hintText,
    required TextEditingController controller}) {
  return TextField(
    autofocus: false,
    controller: controller,
    obscureText: obscureText,
    keyboardType: textInputType,
    decoration: InputDecoration(
      suffixIcon: convertToArabic ? Icon(iconData) : null,
      prefixIcon: convertToArabic ? null : Icon(iconData),
      hintText: hintText,
    ),
  );
}
//End handler  text field of phonenumber &password&email
//*************************************** */
//Start Handler button of facebook &google
Widget custtomButtonOfFasebookAndGoogle({required String imageOfIcon}) {
  return SizedBox(
    width: 60,
    height: 50,
    child: ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.white),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            side: const BorderSide(color: Colors.red),
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
      onPressed: () {},
      child: Image.asset(imageOfIcon, fit: BoxFit.fill),
    ),
  );
}
//End Handler button of facebook &google
//******************************* */
// Start handler button 
Widget cusstomButton(
    {required String title,
    required Color backgroundColor,
    required Color colorofText,
    required VoidCallback onPressed}) {
  return ElevatedButton(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(backgroundColor),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
          side: const BorderSide(color: Colors.blue, width: 2),
        ),
      ),
    ),
    onPressed: onPressed,
    child: Text(
      title,
      style: TextStyle(color: colorofText),
    ),
  );
}
// End  handler button 
//************************* */
//start Handler Tabbar Widget Page My Requests
Widget handlerTabbarWidgetOfMyRequests(
    {required String titleOfButton, required Color colorOfButton}) {
  return Padding(
    padding: const EdgeInsets.all(18.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          alignment: Alignment.topLeft,
          children: [
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      "https://i1.wp.com/dizainvfoto.ru/wp-content/uploads/2017/11/ideya-krasivogo-stilya-gostinoj-spalni.jpg"),
                ),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            Positioned(
              top: 20,
              left: 20,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_border,
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("Design of a children's room for 2 children"),
              Text(
                "256 EG",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "interior design",
            style: TextStyle(color: Colors.black54),
          ),
        ),
        Row(
          children: [
            const CircleAvatar(
              backgroundImage: NetworkImage(
                "https://media.istockphoto.com/photos/smiling-indian-business-man-working-on-laptop-at-home-office-young-picture-id1307615661?k=20&m=1307615661&s=612x612&w=0&h=JbfJwPz5MqC22zaKLS1WPomM28TU2jwVJM1G0o1eL4Q=",
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text("Designer / Ibrahim"),
            ),
            const Expanded(child: SizedBox()),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(colorOfButton),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              onPressed: () {},
              child: Text(
                titleOfButton,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
//End Handler Tabbar Widget Page My Requests
//******************************** */
//start Handler Tabbar Widget Page My Services
Widget handlerTabbarWidgetOfMyServices({
  required String textOfButton,
  required Color colorOfButton,
  required String imageOffurniture,
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Container(
          width: 130,
          height: 100,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                imageOffurniture,
              ),
            ),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text("Design of a children's"),
          Padding(
            padding: EdgeInsets.only(top: 8, bottom: 15),
            child: Text("room for 2 children"),
          ),
          Text(
            "interior design",
            style: TextStyle(color: Colors.black54),
          ),
        ],
      ),
      Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            "256 EG",
            style: TextStyle(color: Colors.blue, fontSize: 22),
          ),
          Row(
            children: const [
              Icon(
                Icons.star,
                size: 15,
                color: Colors.amber,
              ),
              Icon(
                Icons.star,
                size: 15,
                color: Colors.amber,
              ),
              Icon(
                Icons.star,
                size: 15,
                color: Colors.amber,
              ),
              Icon(
                Icons.star,
                size: 15,
                color: Colors.black54,
              ),
            ],
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(colorOfButton),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            onPressed: () {},
            child: Text(
              textOfButton,
            ),
          ),
        ],
      )
    ],
  );
}
//End Handler Tabbar Widget Page My Services
