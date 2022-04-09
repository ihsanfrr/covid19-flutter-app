import 'package:covid19/shared/constant.dart';
import 'package:flutter/material.dart';

class StatisticWidget extends StatelessWidget {
  const StatisticWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: body.withOpacity(0.1),
            offset: const Offset(0.0, 0.0),
            blurRadius: 16,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 40,
                height: 40,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: orange.withOpacity(0.1),
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  'assets/images/positif.png',
                  width: 20,
                  height: 20,
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                '369',
                style: regular.copyWith(
                  color: orange,
                  fontSize: 48,
                ),
              ),
              Text(
                'Kasus Positif',
                style: regular.copyWith(
                  color: body,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 40,
                height: 40,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: green.withOpacity(0.1),
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  'assets/images/sembuh.png',
                  width: 20,
                  height: 20,
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                '17',
                style: regular.copyWith(
                  color: green,
                  fontSize: 48,
                ),
              ),
              Text(
                'Sembuh',
                style: regular.copyWith(
                  color: green,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 40,
                height: 40,
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: red.withOpacity(0.1),
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  'assets/images/meninggal.png',
                  width: 16,
                  height: 16,
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                '32',
                style: regular.copyWith(
                  color: red,
                  fontSize: 48,
                ),
              ),
              Text(
                'Meninggal',
                style: regular.copyWith(
                  color: body,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
