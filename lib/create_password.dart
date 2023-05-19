import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projet/Password_screen.dart';
import 'package:projet/home_screen.dart';

class CreatPassScreen extends StatefulWidget {
  const CreatPassScreen({super.key});

  @override
  State<CreatPassScreen> createState() => _CreatPassScreenState();
}

class _CreatPassScreenState extends State<CreatPassScreen> {
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
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Get.to(() => PasswordScreen());
                    },
                    icon: Icon(Icons.arrow_back),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text('Create New Password',
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
                'assets/images/c.png',
                height: 300,
                width: 800,
              ),
              SizedBox(
                height: 10,
              ),
              Text('Create Your New Password',
                  style: TextStyle(color: Colors.black54, fontSize: 15.0)),
              SizedBox(
                height: 30,
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
                  labelText: '',
                  prefixIcon: Icon(Icons.lock, color: Colors.black),
                  suffixIcon: Icon(Icons.remove_red_eye, color: Colors.black),
                ),
              ),
              SizedBox(
                height: 5,
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
                  labelText: '',
                  prefixIcon: Icon(Icons.lock, color: Colors.black),
                  suffixIcon: Icon(Icons.remove_red_eye, color: Colors.black),
                ),
              ),
              SizedBox(
                height: 10.0,
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
                height: 10,
              ),
              InkWell(
                onTap: () {
                  _showAlertDialog();
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

  Future<void> _showAlertDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          content: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(90),
                ),
              ),
              height: 400,
              width: 400,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image.asset(
                    'assets/images/ca.png',
                    fit: BoxFit.fill,
                    height: 200.0,
                    width: 200.0,
                  ),
                  Text('Congratulations!',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 30.0,
                      )),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text('Your account is ready to use',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                      )),
                  SizedBox(
                    height: 30.0,
                  ),
                  InkWell(
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
                        horizontal: 10,
                      ),
                      alignment: Alignment.center,
                      height: 50,
                      width: 200,
                      child: Text(
                        "Go to HomePage",
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
              )),
        );
      },
    );
  }
}
