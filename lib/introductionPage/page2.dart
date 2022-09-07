import 'package:flutter/material.dart';

import 'package:monoui/authenticationPages/signinpage.dart';
import 'package:monoui/handlerwidget/handlerwidgets.dart';

class Onbording2 extends StatelessWidget {
  const Onbording2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Start My Image
          Image.asset("assets/indroductionimages/introduction2.png"),
          //End My Image
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Apply your service with us !",
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 25),
            ),
          ),
         //space
          const SizedBox(
            height: 25,
          ),
          const Text(
            textAlign: TextAlign.center,
            "Lorem Ipsum is simply dummy \n  text of printing",
            style: TextStyle(color: Colors.black54),
          ),
          //space
          const SizedBox(
            height: 50,
          ),
         //Two CircleAvatar
          Row(
            children: const [
              Expanded(
                child: SizedBox(),
              ),
              CircleAvatar(
                radius: 6,
                backgroundColor: Colors.black12,
              ),
              SizedBox(
                width: 15,
              ),
              CircleAvatar(
                radius: 6,
                backgroundColor: Colors.amber,
              ),
              Expanded(
                child: SizedBox(),
              ),
            ],
          ),
          //Space
          const SizedBox(
            height: 50,
          ),
          //Button "Continue" toMove SignIn Page
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: SizedBox(
              height: 50,
              width: double.infinity,
              child: cusstomButton(
                title: "countinue",
                backgroundColor: Colors.blue,
                colorofText: Colors.white,
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => const SignInPage(),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
