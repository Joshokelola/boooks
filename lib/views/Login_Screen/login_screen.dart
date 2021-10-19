import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key, this.controller, this.hint}) : super(key: key);

  TextEditingController? controller;
  final String? hint;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 30),
                height: 200,
                width: 200,
                child: SvgPicture.asset(
                  'assets/images/login_2.svg',
                ),
              ),
              Container(
                width: 300,
                decoration: BoxDecoration(
                    // border: Border.all(
                    //   color: Colors.grey,
                    //   width: 1.0,
                    // ),
                    borderRadius: BorderRadius.circular(10)),
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.always,
                  keyboardType: TextInputType.emailAddress,
                  controller: controller,
                  autofocus: false,
                  autocorrect: true,
                  cursorColor: Colors.grey[400],
                  decoration: InputDecoration(
                    labelText: 'Email',
                    focusColor: Colors.indigo,
                    fillColor: Colors.indigo,
                    prefixIcon: Icon(Icons.email_rounded),
                    hintStyle: TextStyle(color: Colors.grey[400]),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 300,
                decoration: BoxDecoration(
                    // borderRadius: BorderRadius.circular(10),
                    // border: Border.all(
                    //   color: Colors.grey,
                    //   width: 1.0,
                    // ),
                    ),
                child: TextFormField(
                  obscuringCharacter: '*',
                  obscureText: true,
                  autovalidateMode: AutovalidateMode.always,
                  keyboardType: TextInputType.emailAddress,
                  controller: controller,
                  autofocus: false,
                  autocorrect: true,
                  cursorColor: Colors.grey[400],
                  decoration: InputDecoration(
                    labelText: 'Password',
                    focusColor: Colors.indigo,
                    fillColor: Colors.indigo,
                    prefixIcon: Icon(Icons.lock_outlined),
                    hintStyle: TextStyle(color: Colors.grey[400]),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ConstrainedBox(
                constraints: BoxConstraints.tightFor(
                    width: MediaQuery.of(context).size.width / 2),
                child: Container(
                  margin: const EdgeInsets.only(left: 50, right: 40),
                  child: Row(
                    children: [
                      ElevatedButton(
                        child: const Text('Login'),
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.indigo),
                        ),
                      ),
                      SizedBox(width: 10),
                      ElevatedButton(
                        child: const Text('Sign Up'),
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.indigo),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
