import 'package:covid19/shared/constant.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final Color color;
  final String image;
  final String title;
  final Widget? custom;

  const ItemWidget({
    Key? key,
    required this.color,
    required this.image,
    required this.title,
    this.custom,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.only(bottom: 10),
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
          Row(
            children: [
              Container(
                width: 48,
                height: 48,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: color.withOpacity(0.1),
                  shape: BoxShape.circle,
                ),
                child: Image.asset('assets/images/$image'),
              ),
              const SizedBox(
                width: 16,
              ),
              Text(
                title,
                style: regular.copyWith(
                  color: black,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          custom != null
              ? custom!
              : const Icon(
                  Icons.chevron_right,
                  color: body,
                ),
        ],
      ),
    );
  }
}
