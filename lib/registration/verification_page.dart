import 'package:flutter/material.dart';
import 'package:pin_plus_keyboard/package/controllers/pin_input_controller.dart';
import 'package:pin_plus_keyboard/package/pin_plus_keyboard_package.dart';
import 'package:pin_plus_keyboard/pin_plus_keyboard.dart';

class VerificationPage extends StatefulWidget {
  const VerificationPage({super.key});

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  PinInputController pinInputController = PinInputController(length: 4);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(),
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Verify your number",
                style: TextStyle(
                  color: Colors.blueGrey.shade800,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Text(
              'Enter the code sent on +46777***666',
              style: TextStyle(
                color: Colors.blueGrey.shade600,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            PinPlusKeyBoardPackage(
              spacing: 50,
              buttonBorderColor: Colors.transparent,
              btnElevation: 5,
              inputShadowColor: Colors.grey.shade200,
              keyboardBtnSize: 40,
              keyboardButtonShape: KeyboardButtonShape.defaultShape,
              keyoardBtnBorderRadius: BorderRadius.circular(3),
              keyboardMaxWidth: 60,
              inputHasBorder: true,
              inputBorderColor: Colors.blueGrey.shade600,
              inputWidth: 30,
              inputHeight: 50,
              inputBorderRadius: BorderRadius.circular(2),
              inputBorderThickness: 1.5,
              inputFillColor: Colors.blueGrey.shade50,
              buttonFillColor: Colors.white,
              cancelColor: Colors.blueGrey.shade600,
              inputElevation: 5,
              btnShadowColor: Colors.grey.shade300,
              btnTextColor: Colors.blueGrey.shade800,
              keyboardVerticalSpacing: 2,
              pinInputController: pinInputController,
              inputTextColor: Colors.blueGrey.shade800,
              onSubmit: () {
                /// ignore: avoid_print
                print("Text is : ${pinInputController.text}");
              },
              keyboardFontFamily: '',
            ),
          ],
        ),
      ),
    );
  }
}
