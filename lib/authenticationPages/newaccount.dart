import 'package:flutter/material.dart';
import 'package:monoui/authenticationPages/signinpage.dart';
import 'package:monoui/handlerwidget/handlerwidgets.dart';
import 'package:monoui/mynavigationbar/handlerbottomnavigationbar.dart';
import 'package:monoui/provider/allprovider.dart';
import 'package:provider/provider.dart';

class CreatNewAccont extends StatefulWidget {
  const CreatNewAccont({super.key});

  @override
  State<CreatNewAccont> createState() => _CreatNewAccontState();
}

class _CreatNewAccontState extends State<CreatNewAccont> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //start My AppBar
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          //button to return signin page
          onPressed: () {
            Navigator.of(context).pop(
              MaterialPageRoute(
                builder: (context) => const SignInPage(),
              ),
            );
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
          ),
        ),
        title: const Text(
          "Creat New Account",
        ),
      ),
      //End My AppBar
      //************************ */
      //Start My Body by Useing consumer og provider to chamge languge
      body: Consumer<ConvertArabicToEnglish>(
        builder: (context, value, child) {
          return Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    //text "Welcome"
                    const Text(
                      "Welcome",
                      style: TextStyle(color: Colors.blue),
                    ),
                    // convert page to english&arabic
                    Row(
                      children: [
                        convertToArabic
                            ? const Text(
                                "convert to English:",
                                style: TextStyle(fontWeight: FontWeight.w600),
                              )
                            : const Text(
                                "convert to Arabic:",
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                        Container(
                          // color: Colors.grey.shade300,
                          decoration: BoxDecoration(
                            color: convertToArabic
                                ? Colors.grey.shade300
                                : Colors.green.shade100,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: IconButton(
                            onPressed: () {
                              Provider.of<ConvertArabicToEnglish>(context,
                                      listen: false)
                                  .incrementEnglish();
                              print(convertToArabic);
                              // setState(
                              //   () {
                              //     convertToArabic = !convertToArabic;
                              //   },
                              // );
                            },
                            icon: Icon(
                              Icons.abc,
                              color:
                                  convertToArabic ? Colors.black : Colors.blue,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                //text field of phone number
                Column(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: convertToArabic
                          ? const Text(
                              textAlign: TextAlign.left, "phone number")
                          : const Text(
                              textAlign: TextAlign.right, "رقم الهاتف"),
                    ),
                    custtomTextField(
                        textInputType: TextInputType.phone,
                        iconData: Icons.call,
                        obscureText: false,
                        hintText:
                            convertToArabic ? "phone number" : "رقم الهاتف",
                        controller: phoneNumberController),
                  ],
                ),

                //text field of password
                Column(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: convertToArabic
                          ? const Text(textAlign: TextAlign.left, "password")
                          : const Text(textAlign: TextAlign.right, "كلمه السر"),
                    ),
                    custtomTextField(
                        textInputType: TextInputType.emailAddress,
                        iconData: Icons.visibility_off_rounded,
                        obscureText: true,
                        hintText: convertToArabic ? "Password" : "كلمه السر",
                        controller: passwordController),
                  ],
                ),

                //A "Convert to Arabic"is it value type Bool to Change Language
                //button "sign up"||"تسجيل الدخول"
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: cusstomButton(
                      title: convertToArabic ? "sign up" : "انشاء حساب جديد",
                      backgroundColor: Colors.blue,
                      colorofText: Colors.white,
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => const MyNavigationBarPages(),
                          ),
                        );
                      }),
                ),
                //text "Or by social media"||"التسجيل بواسطه وسائل التواصل الاجتماعى"
                Center(
                  child: convertToArabic
                      ? const Text("Or by social media")
                      : const Text("التسجيل بواسطه وسائل التواصل الاجتماعى"),
                ),

                //button of facebook and google
                Row(
                  children: [
                    const Expanded(child: SizedBox()),
                    custtomButtonOfFasebookAndGoogle(
                      imageOfIcon: "assets/facebook&googleimages/google.png",
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    custtomButtonOfFasebookAndGoogle(
                      imageOfIcon: "assets/facebook&googleimages/facebook.png",
                    ),
                    const Expanded(child: SizedBox()),
                  ],
                ),
                //text "I have account   "||"لدى حساب بالفعل"
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      convertToArabic
                          ? const Text("I have account   ")
                          : const Text("لدى حساب بالفعل"),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const SignInPage(),
                            ),
                          );
                        },
                        child: convertToArabic
                            ? const Text(
                                "Sign in",
                                style: TextStyle(color: Colors.blue),
                              )
                            : const Text(
                                "تسجيل الدخول",
                                style: TextStyle(color: Colors.blue),
                              ),
                      ),
                    ],
                  ),
                ),
                //button of "Enter as a guest"||"تصفح كزائر"
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: cusstomButton(
                      title:
                          convertToArabic ? "Enter as a guest" : "تصفح كزائر",
                      backgroundColor: Colors.white,
                      colorofText: Colors.blue,
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => const MyNavigationBarPages(),
                          ),
                        );
                      }),
                ),
              ],
            ),
          );
        },
      ),
    //End My Body
    );
  }
}
