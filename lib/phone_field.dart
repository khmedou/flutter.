import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PhoneField extends StatefulWidget {
  PhoneField({super.key});

  @override
  State<PhoneField> createState() => _PhoneFieldState();
}

class _PhoneFieldState extends State<PhoneField> {
  TextEditingController phone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white10,
        ),
        child: TextFormField(
            keyboardType: TextInputType.phone,
            controller: phone,
            decoration: InputDecoration(
              hintText: "Phone Number",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.green),
                borderRadius: BorderRadius.circular(15),
              ),
              filled: true,
              fillColor: Colors.white,
              prefixIcon: CountryListPick(
                initialSelection: 'Phone Number',
                onChanged: (CountryCode? code) => print(code),
                theme: CountryTheme(
                  isShowFlag: true,
                  isShowTitle: false,
                  isShowCode: false,
                  isDownIcon: false,
                  showEnglishName: false,
                ),
              ),
            ),
            validator: (phoneNumber) {
              if (phoneNumber!.isEmpty) {
                return 'field_required';
              }
              phone.text = phoneNumber;
              return null;
            }),
      ),
    );
  }
}
