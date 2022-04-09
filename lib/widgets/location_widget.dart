import 'package:covid19/shared/constant.dart';
import 'package:flutter/material.dart';

class LocationWidget extends StatelessWidget {
  LocationWidget({
    Key? key,
  }) : super(key: key);

  final String? city = 'Jakarta';

  final List<String> cities = [
    'Jakarta',
    'Bandung',
    'Surabaya',
    'Medan',
  ];

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      isExpanded: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: green),
          borderRadius: BorderRadius.circular(100),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: green),
          borderRadius: BorderRadius.circular(100),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: green),
          borderRadius: BorderRadius.circular(100),
        ),
      ),
      value: city,
      items: cities
          .map(
            (e) => DropdownMenuItem(
              child: Text(e),
              value: e,
            ),
          )
          .toList(),
      onChanged: (String? val) {},
    );
  }
}
