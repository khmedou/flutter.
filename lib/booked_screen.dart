import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:projet/home_screen.dart';

class bookedscreen extends StatefulWidget {
  const bookedscreen({super.key});

  @override
  State<bookedscreen> createState() => _bookedscreenState();
}

class _bookedscreenState extends State<bookedscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        leading: IconButton(
          onPressed: () {
            Get.to(() => homeScreen());
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Text('Recently Booked',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20.0)),
        actions: [
          Padding(
            padding: EdgeInsets.all(20.0),
          ),
          Row(
            children: [
              Icon(
                Icons.assignment,
                color: Colors.black54,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.border_all_rounded,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
