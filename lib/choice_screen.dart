import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:projet/login_scree.dart';
import 'package:projet/signup_screen.dart';
import 'package:projet/world_screen.dart';

class ChoiceScreen extends StatelessWidget {
  ChoiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10.0,
              ),
              IconButton(
                onPressed: () {
                  Get.to(() => worldScreen());
                },
                icon: Icon(Icons.arrow_back),
              ),
              SizedBox(
                height: 40.0,
              ),
              Center(
                child: Text(
                  "Let's you in",
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/f.jpeg',
                      height: 40.0,
                      width: 40.0,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text('  Continue with Facebook')
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/g.jpeg',
                      height: 40.0,
                      width: 40.0,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text('Continue with Google')
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/app.jpeg',
                      height: 40.0,
                      width: 40.0,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text('Continue with Apple')
                  ],
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              Center(child: Text('or')),
              SizedBox(
                height: 60.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 1.5,
                  horizontal: 1.5,
                ),
                child: InkWell(
                  onTap: () {
                    Get.to(() => loginscreen());
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
                      "Sign in with password",
                      style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 90.0,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account? ",
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black54,
                      ),
                    ),
                    InkWell(
                        onTap: () => {
                              Get.to(() => signupscreen()),
                            },
                        child: Text(
                          'Sign up',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                          ),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
