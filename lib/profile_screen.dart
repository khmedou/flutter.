import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:projet/choice_screen.dart';
import 'package:projet/login_scree.dart';
import 'package:projet/phone_field.dart';
import 'package:projet/signup_screen.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_rounded_date_picker/flutter_rounded_date_picker.dart';
import 'package:intl/intl.dart';

class profilescreen extends StatefulWidget {
  profilescreen({super.key});

  @override
  State<profilescreen> createState() => _profilescreenState();
}

class _profilescreenState extends State<profilescreen> {
  TextEditingController date = TextEditingController();
  File? image;
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
                height: 10.0,
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Get.to(() => signupscreen());
                    },
                    icon: Icon(Icons.arrow_back),
                  ),
                  Text('Fill Your Profile',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0)),
                ],
              ),
              Center(
                child: InkWell(
                  onTap: () => getLostData(),
                  child: image != null
                      ? Image.file(
                          File(image!.path),
                          width: 200,
                          height: 100,
                        )
                      : CircleAvatar(child: Icon(Icons.person)),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  labelText: 'Full Name',
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  labelText: 'Nickname',
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                controller: date,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  labelText: 'Date of Birth',
                  suffixIcon: IconButton(
                    icon: Icon(Icons.calendar_month, color: Colors.grey),
                    onPressed: () async {
                      DateTime? newDateTime = await showRoundedDatePicker(
                        context: context,
                        theme: ThemeData(),
                      );
                      if (newDateTime != null) {
                        String formattedDate =
                            DateFormat('yyyy-MM-dd').format(newDateTime);
                        setState(() {
                          date.text = formattedDate;
                        });
                        //pickedDate output format => 2021-03-10 00:00:00.000

                        //formatted date output using intl package =>  2021-03-16

                      } else {}
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  labelText: 'Email',
                  suffixIcon: Icon(Icons.email, color: Colors.grey),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              PhoneField(),
              Padding(
                padding: EdgeInsets.fromLTRB(
                  0,
                  13,
                  0,
                  10,
                ),
                child: DropdownButtonFormField(
                  alignment: AlignmentDirectional.bottomEnd,
                  //alignment: Alignment.bottomLeft,
                  isExpanded: true,
                  menuMaxHeight: Get.size.height * 0.25,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black54),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black54),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    hintText: "Gender".tr,
                    contentPadding:
                        EdgeInsets.only(right: 10, left: 15, top: 35),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                  items: ["male", "female"].map((map) {
                    return DropdownMenuItem(
                      value: map,
                      child: Text("$map"),
                    );
                  }).toList(),
                  onChanged: (value) {},
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              InkWell(
                onTap: () => {
                  Get.to(() => loginscreen()),
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

  Future<void> getLostData() async {
    final ImagePicker picker = ImagePicker();
    final i = await picker.pickImage(source: ImageSource.gallery);
    if (i != null)
      setState(() {
        image = File(i.path);
      });

//   if (files != null) {
//     _handleLostFiles(files);
//   } else {
//     _handleError(response.exception);
//   }
  }
}
