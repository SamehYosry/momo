import 'package:flutter/material.dart';
import 'package:monoui/handlerwidget/handlerwidgets.dart';
import 'package:monoui/introductionPage/page2.dart';

class Onbording1 extends StatelessWidget {
  const Onbording1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Start My Image
          Image.asset("assets/indroductionimages/introduction1.png"),
          // End My Image
          //******************** */
          const Text(
            "Find your service",
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 25),
          ),
          //Space
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
          //TwoCircleAvatar
          Row(
            children: const [
              Expanded(
                child: SizedBox(),
              ),
              CircleAvatar(
                radius: 6,
                backgroundColor: Colors.amber,
              ),
              SizedBox(
                width: 15,
              ),
              CircleAvatar(
                radius: 6,
                backgroundColor: Colors.black12,
              ),
              Expanded(
                child: SizedBox(),
              ),
            ],
          ),
          //space
          const SizedBox(
            height: 50,
          ),
          //Button "Continue" toMove scond Page
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
                      builder: (context) => const Onbording2(),
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
