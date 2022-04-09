import 'package:covid19/screens/bantuan_screen.dart';
import 'package:covid19/screens/informasi_screen.dart';
import 'package:covid19/screens/kasus_screen.dart';
import 'package:covid19/widgets/bottom_navigation_widget.dart';
import 'package:flutter/material.dart';

class WrapperScreen extends StatefulWidget {
  const WrapperScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<WrapperScreen> createState() => _WrapperScreenState();
}

class _WrapperScreenState extends State<WrapperScreen> {
  int selectedIndex = 0;
  final List<Widget> screens = [
    const KasusScreen(),
    const InformasiScreen(),
    const BantuanScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomSheet: BottomNavigationWidget(
        selectedIndex: selectedIndex,
        onTap: (val) {
          setState(() {
            selectedIndex = val;
          });
        },
      ),
    );
  }
}
