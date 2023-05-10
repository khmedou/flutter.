import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:projet/Travel_Screen.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () async {
      Get.off(() => TravelScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(children: [
          Image.asset(
            'assets/images/ch.jpeg',
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          Positioned(
            left: 20,
            bottom: 30,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome to 👋",
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text("Helia",
                    style: TextStyle(
                        color: Colors.greenAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 40.0)),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "The best hotel booking in this century ",
                  style: TextStyle(color: Colors.white, fontSize: 13.0),
                ),
                Text(
                  "to accompany your vacation",
                  style: TextStyle(color: Colors.white, fontSize: 13.0),
                ),
                SizedBox(
                  height: 20.0,
                ),
              ],
            ),
          ),
        ]),
      ),
    );
    ;
  }
}
