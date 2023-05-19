import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:projet/booked_screen.dart';
import 'package:projet/choice_screen.dart';
import 'package:projet/hotels_screen.dart';
import 'package:projet/signup_screen.dart';

class TravelScreen extends StatelessWidget {
  TravelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(children: [
          Image.asset(
            'assets/images/trv.jpeg',
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height * 0.45,
            width: MediaQuery.of(context).size.width * 1.3,
          ),
          SizedBox(
            height: 30.0,
          ),
          Positioned(
            left: 20,
            bottom: 30,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Travel safely, ",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text("comfortably, & easily",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0)),
                SizedBox(
                  height: 30.0,
                ),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                  style: TextStyle(color: Colors.blueGrey, fontSize: 13.0),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  " sed do eiusmod tempor incididunt ut labore et ",
                  style: TextStyle(color: Colors.blueGrey, fontSize: 13.0),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "dolore magna aliqua.",
                  style: TextStyle(color: Colors.blueGrey, fontSize: 13.0),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                      ),
                      child: InkWell(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.green,
                          ),
                          padding: EdgeInsets.symmetric(
                            vertical: 10,
                          ),
                          alignment: Alignment.center,
                          height: 10,
                          width: 30,
                          child: Text(
                            "",
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
                      width: 5,
                    ),
                    CircleAvatar(
                      radius: 5,
                      backgroundColor: Colors.grey[400],
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    CircleAvatar(
                      radius: 5,
                      backgroundColor: Colors.grey[400],
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 20,
                  ),
                  child: InkWell(
                    onTap: () {
                      Get.to(() => hotelscreen());
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
                        "Next",
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
                  height: 5.0,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 20,
                  ),
                  child: InkWell(
                    onTap: () {
                      Get.to(() => ChoiceScreen());
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.green[100],
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 20,
                      ),
                      alignment: Alignment.center,
                      height: 50,
                      width: 500,
                      child: Text(
                        "Skip",
                        style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w700,
                          color: Colors.green,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
