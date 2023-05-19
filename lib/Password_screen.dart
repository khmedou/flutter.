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
                width: 1.0,
              ),
              Image.asset(
                'assets/images/lo.png',
                height: 250,
                width: 800,
              ),
              Text('Select which contact details should we use to reset '),
              Text(' your password'),
              SizedBox(
                height: 30,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                margin: const EdgeInsets.all(9),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                        height: 90,
                        width: 150,
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.black12,
                            radius: 45,
                            child: Icon(
                              Icons.sms,
                              size: 30,
                              color: Colors.green,
                            ),
                          ),
                        )),
                    SizedBox(
                      width: 1,
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Via SMS',
                            style:
                                TextStyle(fontSize: 10, color: Colors.black54),
                          ),
                          SizedBox(
                            height: 9,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 60,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                margin: const EdgeInsets.all(9),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                        height: 90,
                        width: 150,
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.black12,
                            radius: 45,
                            child: Icon(
                              Icons.email,
                              size: 30,
                              color: Colors.green,
                            ),
                          ),
                        )),
                    SizedBox(
                      width: 1,
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Via Email',
                            style:
                                TextStyle(fontSize: 10, color: Colors.black54),
                          ),
                          SizedBox(
                            height: 9,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 60,
                    ),
                  ],
                ),
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
