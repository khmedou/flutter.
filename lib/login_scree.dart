import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:projet/Password_screen.dart';
import 'package:projet/home_screen.dart';
import 'package:projet/signup_screen.dart';

class loginscreen extends StatefulWidget {
  loginscreen({super.key});

  @override
  State<loginscreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
  bool isChecked = true;

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
                  // Get.to(() => ChoiceScreen());
                },
                icon: Icon(Icons.arrow_back),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'Login to your ',
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                'Account',
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  labelText: 'Email',
                  prefixIcon: Icon(
                    Icons.email,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  labelText: 'Password',
                  prefixIcon: Icon(Icons.lock, color: Colors.black),
                  suffixIcon: Icon(Icons.remove_red_eye, color: Colors.black),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Checkbox(
                      checkColor: Colors.white,
                      fillColor: MaterialStateProperty.resolveWith(getColor),
                      value: isChecked,
                      onChanged: (bool? n) {
                        setState(() {
                          print(n);
                          isChecked = !isChecked;
                        });
                      }),
                  Text(
                    'Remember me ',
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 1.5,
                  horizontal: 1.5,
                ),
                child: InkWell(
                  onTap: () {
                    Get.to(() => homeScreen());
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
                      "Sign in",
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
                height: 20.0,
              ),
              Center(
                child: InkWell(
                    onTap: () => {
                          Get.to(() => PasswordScreen()),
                        },
                    child: Text(
                      'Forgot the password?',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    )),
              ),
              SizedBox(
                height: 40.0,
              ),
              Center(
                child: Text(
                  'or continue with ',
                  style: TextStyle(fontSize: 18.0, color: Colors.black54),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/f.jpeg',
                    height: 50.0,
                    width: 50.0,
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Image.asset(
                    'assets/images/g.jpeg',
                    height: 50.0,
                    width: 50.0,
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Image.asset(
                    'assets/images/app.jpeg',
                    height: 50.0,
                    width: 50.0,
                  )
                ],
              ),
              SizedBox(
                height: 40.0,
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

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.green;
    }
    return Colors.green;
  }
}
// // child: SingleChildScrollView(
