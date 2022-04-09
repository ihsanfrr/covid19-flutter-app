import 'package:covid19/shared/constant.dart';
import 'package:flutter/material.dart';

class BottomNavigationWidget extends StatelessWidget {
  final int selectedIndex;
  final Function(int index) onTap;

  BottomNavigationWidget({
    Key? key,
    required this.selectedIndex,
    required this.onTap,
  }) : super(key: key);

  final List<String> itemBar = [
    'Kasus',
    'Informasi',
    'Bantuan',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(vertical: 15),
      color: white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: List.generate(
          itemBar.length,
          (i) => GestureDetector(
            onTap: () {
              onTap(i);
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/icons/${itemBar[i].toLowerCase()}_' +
                      (i == selectedIndex ? 'active' : 'unactive') +
                      '.png',
                  width: 20,
                  height: 20,
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  itemBar[i],
                  style: medium.copyWith(
                    color: i == selectedIndex ? green : body,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
