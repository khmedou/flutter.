import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:projet/create_password.dart';
import 'package:projet/login_scree.dart';
import 'package:projet/signup_screen.dart';

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({super.key});

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  var icon;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 5.0,
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Get.to(() => loginscreen());
                    },
                    icon: Icon(Icons.arrow_back),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text('Forgot Password',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0)),
                ],
              ),
              SizedBox(
                width: 10.0,
              ),
              Image.asset(
                'assets/images/lo.png',
                height: 300,
                width: 800,
              ),
              Text('Select which contact details should we use to reset '),
              Text(' your password'),
              SizedBox(
                height: 80,
              ),
              InkWell(
                onTap: () {
                  Get.to(() => CreatPassScreen());
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.green,
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 20,
                  ),
                  alignment: Alignment.center,
                  height: 50,
                  width: 500,
                  child: Text(
                    "Continue",
                    style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
