import 'package:flutter/material.dart';

import 'package:monoui/authenticationPages/signinpage.dart';
import 'package:monoui/authenticationPages/verification.dart';
import 'package:monoui/handlerwidget/handlerwidgets.dart';

class ForgetPasswordPage extends StatefulWidget {
  const ForgetPasswordPage({super.key});

  @override
  State<ForgetPasswordPage> createState() => _ForgetPasswordPageState();
}

class _ForgetPasswordPageState extends State<ForgetPasswordPage> {
  // Radio Button
  int gender = 0;
//Function to Change Radio Button
  void selectGender(selectedGender) {
    setState(() {
      gender = selectedGender;
    });
  }

// Start Handler Text field controller
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController emailController = TextEditingController();
// End Handler Text field controller
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Start My AppBar
      appBar: AppBar(
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Colors.white,
            child: IconButton(
                //to return signin page
                onPressed: () {
                  Navigator.of(context).pop(
                    MaterialPageRoute(
                      builder: (context) => const SignInPage(),
                    ),
                  );
                },
                icon: const Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.black,
                )),
          ),
        ),
        centerTitle: true,
        //Title Of AppBar
        title: const Text(
          "forgot password",
          style: TextStyle(color: Colors.black),
        ),
        //backgrouncolor Of AppBar
        backgroundColor: Colors.white12,
      ),
      //Start My Body
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          //to Scroll Page
          child: Column(
            children: [
              //Row Of Radio Button "Email"&"Phone number"
              Row(
                children: [
                  //start Radio of "email"
                  Radio(
                    fillColor: MaterialStateProperty.all(
                        Colors.amber), //color Of circle of Radio
                    value: 0,
                    groupValue: gender,
                    onChanged: selectGender,
                  ),
                  const Text(
                    'Email',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 15,
                    ),
                  ),
                  //end Radio of "email"
                  const Expanded(
                    //space between two radio
                    child: SizedBox(),
                  ),
                  //start Radio of "phone number"
                  Radio(
                    fillColor: MaterialStateProperty.all(Colors.amber),
                    value: 1,
                    groupValue: gender,
                    onChanged: selectGender,
                  ),
                  const Text(
                    'Phone number',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 15,
                    ),
                  ),
                  //end Radio of "phone number"
                ],
              ),
              if (gender == 0) //text field of "email"
                SizedBox(
                  height: MediaQuery.of(context).size.height / 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        //column of title"email"& textfield
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text("Email"),
                          ),
                          custtomTextField(
                              obscureText: false,
                              textInputType: TextInputType.emailAddress,
                              iconData: Icons.mail_outline,
                              hintText: "Email",
                              controller: emailController),
                        ],
                      ),
                      // button to change radio button to "phone number"
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        child: cusstomButton(
                          title: "send",
                          backgroundColor: Colors.blue,
                          colorofText: Colors.white,
                          onPressed: () {
                            setState(() {
                              gender = 1;
                            });
                          },
                        ),
                      )
                    ],
                  ),
                )
              else if (gender == 1) //text field of "phone number"
                SizedBox(
                  height: MediaQuery.of(context).size.height / 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text("Phone number"),
                          ),
                          custtomTextField(
                              obscureText: false,
                              textInputType: TextInputType.phone,
                              iconData: Icons.call,
                              hintText: "phone number",
                              controller: phoneNumberController),
                        ],
                      ),
                      //Button to move VerificationPage
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        child: cusstomButton(
                          title: "send",
                          backgroundColor: Colors.blue,
                          colorofText: Colors.white,
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const Verification(),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              const SizedBox(
                height: 35,
              ),
            ],
          ),
        ),
      ),
      //End My Body
    );
  }
}
