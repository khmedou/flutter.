import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:projet/bookmark_screen.dart';
import 'package:projet/home_screen.dart';

class bookedscreen extends StatefulWidget {
  const bookedscreen({super.key});

  @override
  State<bookedscreen> createState() => _bookedscreenState();
}

class _bookedscreenState extends State<bookedscreen> {
  String a = "\$";
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
                color: Colors.green,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    Get.to(() => BookMark());
                  },
                  child: Icon(
                    Icons.border_all_rounded,
                    color: Colors.black54,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          //  height: Get.size.height,
          child: Column(
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                margin: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 90,
                        width: 80,
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
                      ),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'President Hotel',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 9,
                          ),
                          Text('Paris, France',
                              style: TextStyle(
                                fontSize: 10,
                              )),
                          SizedBox(
                            height: 9,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 15,
                              ),
                              Text('4.8',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.green)),
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                '(4,378 reviews)',
                                style: TextStyle(fontSize: 10),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    Container(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            '${a}35',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.green),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text('/ night',
                              style: TextStyle(
                                fontSize: 10,
                              )),
                          SizedBox(
                            height: 7,
                          ),
                          Icon(
                            Icons.bookmark_outlined,
                            color: Colors.green,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                margin: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 90,
                        width: 80,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              'assets/images/mt1.jpeg',
                            ),
                          ),
                          border: Border.all(style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Palmas Casino',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 9,
                          ),
                          Text('Amsterdam. Netherlands',
                              style: TextStyle(
                                fontSize: 10,
                              )),
                          SizedBox(
                            height: 9,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 15,
                              ),
                              Text('4.9',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.green)),
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                '(5,283 reviews)',
                                style: TextStyle(fontSize: 10),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    Container(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            '${a}35',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.green),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text('/ night',
                              style: TextStyle(
                                fontSize: 10,
                              )),
                          SizedBox(
                            height: 7,
                          ),
                          Icon(
                            Icons.bookmark_outlined,
                            color: Colors.green,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                margin: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 90,
                        width: 80,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              'assets/images/sr1.jpeg',
                            ),
                          ),
                          border: Border.all(style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Palazzo Versace',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 9,
                          ),
                          Text('Rome Italia',
                              style: TextStyle(
                                fontSize: 10,
                              )),
                          SizedBox(
                            height: 9,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 15,
                              ),
                              Text('4.7',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.green)),
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                '(3,277 reviews)',
                                style: TextStyle(fontSize: 10),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    Container(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            '${a}35',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.green),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text('/ night',
                              style: TextStyle(
                                fontSize: 10,
                              )),
                          SizedBox(
                            height: 7,
                          ),
                          Icon(
                            Icons.bookmark_outlined,
                            color: Colors.black54,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                margin: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 90,
                        width: 80,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              'assets/images/sr2.jpeg',
                            ),
                          ),
                          border: Border.all(style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Bulgari Resort',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 9,
                          ),
                          Text('Istanbul Turkiye',
                              style: TextStyle(
                                fontSize: 10,
                              )),
                          SizedBox(
                            height: 9,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 15,
                              ),
                              Text('4.8',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.green)),
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                '(4,981 reviews)',
                                style: TextStyle(fontSize: 10),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    Container(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            '${a}35',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.green),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text('/ night',
                              style: TextStyle(
                                fontSize: 10,
                              )),
                          SizedBox(
                            height: 7,
                          ),
                          Icon(
                            Icons.bookmark_outlined,
                            color: Colors.black54,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                margin: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 90,
                        width: 80,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              'assets/images/sr3.jpeg',
                            ),
                          ),
                          border: Border.all(style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Martinez Chines',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 9,
                          ),
                          Text('London. Uruted Kiraciom',
                              style: TextStyle(
                                fontSize: 10,
                              )),
                          SizedBox(
                            height: 9,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 15,
                              ),
                              Text('4.6',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.green)),
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                '(3,672 reviews)',
                                style: TextStyle(fontSize: 10),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    Container(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            '${a}35',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.green),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text('/ night',
                              style: TextStyle(
                                fontSize: 10,
                              )),
                          SizedBox(
                            height: 7,
                          ),
                          Icon(
                            Icons.bookmark_outlined,
                            color: Colors.black54,
                          ),
                        ],
                      ),
                    ),
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
