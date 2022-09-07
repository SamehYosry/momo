import 'package:flutter/material.dart';
import 'package:monoui/authenticationPages/forgetpassword.dart';
import 'package:monoui/authenticationPages/newaccount.dart';
import 'package:monoui/handlerwidget/handlerwidgets.dart';
import 'package:monoui/mynavigationbar/handlerbottomnavigationbar.dart';

// start Handler Text Field Controller
TextEditingController phoneNumberController = TextEditingController();
TextEditingController passwordController = TextEditingController();

// End Handler Text Field Controller
class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Start My AppBar
      appBar: AppBar(
          foregroundColor: Colors.black,
          backgroundColor: Colors.white12,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            "Sign In",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          )),
      //End My AppBar
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            //ToScroll Page
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                //start text "welcome back"
                const Text(
                  "welcome back",
                  style: TextStyle(color: Colors.blue),
                ),
                //End text "welcome back"
                // *******************************
                //Start Space
                const SizedBox(
                  height: 25,
                ),
                //End Space
                //**************************** */
                //text "phone number"
                const Text(
                  "phone number",
                  style: TextStyle(color: Colors.black),
                ),
                //Text Field Of Phone Number
                custtomTextField(
                    iconData: Icons.call,
                    textInputType: TextInputType.phone,
                    obscureText: false,
                    hintText: 'Enter Number',
                    controller: phoneNumberController),
                const SizedBox(
                  height: 25,
                ),
                //text "password"
                const Text(
                  "password",
                  style: TextStyle(color: Colors.black),
                ),
                //Text Field Of password
                custtomTextField(
                    iconData: Icons.visibility_off,
                    textInputType: TextInputType.visiblePassword,
                    obscureText: true,
                    hintText: 'Enter Password',
                    controller: passwordController),
                //text "Forget password"&To Move Me ForgetPassword Page
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: GestureDetector(
                      //To Move Me ForgetPassword Page
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const ForgetPasswordPage(),
                          ),
                        );
                      },
                      child: const Text(
                        "Forget password ?",
                        textAlign: TextAlign.end,
                      ),
                    ),
                  ),
                ),
                //Space
                const SizedBox(
                  height: 50,
                ),
                //Button Of Sign In
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: cusstomButton(
                    title: 'sign in',
                    backgroundColor: Colors.blue,
                    colorofText: Colors.white,
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => const MyNavigationBarPages(),
                        ),
                      );
                    },
                  ),
                ),
                //Space
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    children: [
                      //text of"Or by social media"
                      const Text("Or by social media"),
                      //two button Fasebook & Google
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: Row(
                          children: [
                            const Expanded(child: SizedBox()),
                            //Button OF Google
                            custtomButtonOfFasebookAndGoogle(
                                imageOfIcon:
                                    "assets/facebook&googleimages/google.png"),
                            const SizedBox(width: 10),
                            //Button OF Facebook
                            custtomButtonOfFasebookAndGoogle(
                              imageOfIcon:
                                  "assets/facebook&googleimages/facebook.png",
                            ),
                            const Expanded(child: SizedBox()),
                          ],
                        ),
                      ),
                      //text of"creat new account"&Move Me to CreatAccount Page
                      Row(
                        children: [
                          const Expanded(child: SizedBox()),
                          const Text("I have no account "),
                          GestureDetector(
                            // Move Me to CreatAccount Page
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const CreatNewAccont(),
                                ),
                              );
                            },
                            child: const Text(
                              "creat new account",
                              style: TextStyle(color: Colors.blue),
                            ),
                          ),
                          const Expanded(child: SizedBox())
                        ],
                      ),
                      //space
                      const SizedBox(
                        height: 25,
                      ),
                      //button of "enter as a guest"
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: cusstomButton(
                            title: "Enter as a guest",
                            backgroundColor: Colors.white,
                            colorofText: Colors.blue,
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const MyNavigationBarPages(),
                                ),
                              );
                            }),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
