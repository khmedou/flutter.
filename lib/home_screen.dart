import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:projet/notification_screen.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  String a = "\$";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Image.asset(
          'assets/images/j-remov.png',
          height: 80.0,
          width: 80.0,
        ),
        title: Text(
          "Helia",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {
              Get.to(() => notificationScreen());
            },
            icon: Icon(
              Icons.notifications_none,
              color: Colors.black54,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.bookmark_outline,
              color: Colors.black54,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello,Daniel 👋",
                style: TextStyle(color: Colors.black, fontSize: 20.0),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black54),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  labelText: 'Search',
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black54,
                  ),
                  suffixIcon: Icon(
                    Icons.swap_horizontal_circle_sharp,
                    color: Colors.green,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green,
                    ),
                    child: ElevatedButton(
                      child: Text("Recommended"),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        elevation: 0,
                      ),
                      onPressed: () {
                        // Get.to(() => notificationScreen());
                      },
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green,
                    ),
                    child: ElevatedButton(
                      child: Text("Popular"),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        elevation: 0,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green,
                    ),
                    child: ElevatedButton(
                      child: Text("Trending"),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        elevation: 0,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              PageView.builder(
                  itemCount: 2,
                  pageSnapping: true,
                  itemBuilder: (context, pagePosition) {
                    return Container(
                        // elevation: 2,
                        height: 400,
                        width: Get.size.width,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              'assets/images/mt.jpeg',
                            ),
                          ),
                          border: Border.all(style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Positioned(
                          left: 20,
                          bottom: 30,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Emeralda De Hotel",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.0)),
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                  Text(
                                    "Paris, France ",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10.0),
                                  ),
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "${a}29 per night ",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10.0),
                                      ),
                                      SizedBox(
                                        width: 200,
                                      ),
                                      Icon(
                                        Icons.bookmark_border,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                ]),
                          ),
                        ));
                  })
            ],
          ),
        ),
      ),
    );
  }
}
