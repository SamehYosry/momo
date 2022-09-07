import 'package:flutter/material.dart';
import 'package:monoui/handlerwidget/handlerwidgets.dart';
import 'package:monoui/mynavigationbar/handlerbottomnavigationbar.dart';

class Verification extends StatefulWidget {
  const Verification({super.key});

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  //Start Handler TextField Controller
  TextEditingController number1controller = TextEditingController();
  TextEditingController number2controller = TextEditingController();
  TextEditingController number3controller = TextEditingController();
  TextEditingController number4controller = TextEditingController();
  //End Handler TextField Controller
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Start My AppBar
      appBar: AppBar(
        backgroundColor: Colors.white12,
        foregroundColor: Colors.black,
        elevation: 0,
        title: const Text("verification"),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios_new_outlined),
        ),
      ),
      //End My AppBar
      //*********************** */
      //Start My Body
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          //Start My Text
          const Center(
            child: Text(
              "Lorem Ipsum is simply dummy \n\t\t\t\t\t\t\t\t\t text of the printing",
              style: TextStyle(fontSize: 18, color: Colors.black87),
            ),
          ),
          //End My Text
          /************************* */
          //Start My Text Field
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //Start First Text Field
              custtomTextFieldVerification(
                controller: number1controller,
                textInputAction: TextInputAction.next,
                onChanged: () => FocusScope.of(context).nextFocus(),
                autofocus: true,
              ),
              //End First Text Field
              /************************* */
              //Start Scond Text Field
              custtomTextFieldVerification(
                  autofocus: false,
                  controller: number2controller,
                  textInputAction: TextInputAction.next,
                  onChanged: () => FocusScope.of(context).nextFocus()),
              //End Scond Text Field
              //********************* */
              //Start Third Text Field
              custtomTextFieldVerification(
                autofocus: false,
                controller: number3controller,
                textInputAction: TextInputAction.next,
                onChanged: () => FocusScope.of(context).nextFocus(),
              ),
              //End Third Text Field
              //************************* */
              //Start fourth Text Field
              custtomTextFieldVerification(
                autofocus: false,
                controller: number4controller,
                textInputAction: TextInputAction.done,
                onChanged: () => FocusScope.of(context).unfocus(),
              ),
              // fourth Text Field
            ],
          ),
          //Start Text oF "Resend&Time"
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: const [
                Text("Resend    "),
                Text(
                  "1:55 min",
                  style: TextStyle(color: Colors.blue),
                )
              ],
            ),
          ),
          //End Text oF "Resend"
          //************************** */
           //Start Button Of Confirm
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: cusstomButton(
                title: "confirm",
                backgroundColor: Colors.blue,
                colorofText: Colors.white,
                onPressed: () {
                  Navigator.of(context).pushReplacement(//to Entering the application
                    MaterialPageRoute(
                      builder: (context) => const MyNavigationBarPages(),
                    ),
                  );
                },
              ),
            ),
          )
         //End Button Of Confirm
        ],
      ),
      //End My Body
    );
  }

//Handler text Field
  Widget custtomTextFieldVerification(
      {required TextEditingController controller,
      required TextInputAction textInputAction,
      required VoidCallback onChanged,
      required bool autofocus}) {
    return SizedBox(
      width: 50,
      height: 50,
      child: TextFormField(
        autofocus: autofocus,
        textInputAction: textInputAction,
        onChanged: (value) => onChanged,
        controller: controller,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.phone,
        maxLength: 1,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.amber, width: 2),
            borderRadius: BorderRadius.circular(8),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.blue, width: 2),
            borderRadius: BorderRadius.circular(8),
          ),
          counterText: "",
        ),
      ),
    );
  }
}
