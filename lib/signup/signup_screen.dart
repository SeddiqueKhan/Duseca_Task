import 'package:duseca_task/book_seat/book_seat_screen.dart';
import 'package:duseca_task/widgets/label_textfield.dart';
import 'package:duseca_task/widgets/radio_button.dart';
import 'package:flutter/material.dart';

import '../widgets/text_button.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  myCallback() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => const BookSeatScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0),
            child: Column(
              children: [
                SizedBox(
                  height: 200,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 120,
                            decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
                                border: Border.all(color: Colors.red)),
                            child: const Center(
                              child: Text(
                                'Duseca',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                    color: Colors.red),
                              ),
                            )),
                        const SizedBox(
                          height: 40,
                        ),
                        const Text(
                          'SignUp today',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Expanded(
                          child: Text(
                            'Provide us your credentials to start\njourney with us.',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const LabeledTextField(label: 'Your name', hintText: 'e.g John Doe'),
                      const LabeledTextField(label: 'Your email', hintText: 'youremail@gmail.com'),
                      const LabeledTextField(label: 'Phone no*', hintText: '310-xxxxxxxx'),
                      const LabeledTextField(label: 'Password', hintText: '.........'),
                      const LabeledTextField(label: 'Confirm password', hintText: '.........'),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomRadioButton(label: 'Passenger'),
                          CustomRadioButton(label: 'Driver'),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            width: 15.0,
                            height: 15.0,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.green,
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.check,
                                color: Colors.white,
                                size: 10,
                              ),
                            ),
                          ),
                          const SizedBox(width: 10,),
                          const Expanded(
                            child: Text(
                              'Password must be at least 8 character, uppercase,\nlowercase, and unique code!',
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20,),
                      SizedBox(
                          height: 50,
                          width: 300,
                          child: TextButtonWidget(
                            buttonText: 'Create Account',
                            callback: myCallback
                          ))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
