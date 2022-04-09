import 'package:covid19/shared/constant.dart';
import 'package:covid19/widgets/item_widget.dart';
import 'package:flutter/material.dart';

class InformasiScreen extends StatelessWidget {
  const InformasiScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/informasi.png',
          width: MediaQuery.of(context).size.width,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, top: 100),
          child: Text(
            'Kenali\nCOVID-19',
            style: bold.copyWith(
              color: white,
              fontSize: 36,
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.62,
            padding: const EdgeInsets.symmetric(horizontal: 24),
            decoration: const BoxDecoration(
              color: bg,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 24,
                  ),
                  Text(
                    'Apa Itu Virus Corona',
                    style: medium.copyWith(
                      color: black,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const ItemWidget(
                    color: red,
                    image: 'mengenal.png',
                    title: 'Mengenal',
                  ),
                  const ItemWidget(
                    color: orange,
                    image: 'mencegah.png',
                    title: 'Mencegah',
                  ),
                  const ItemWidget(
                    color: green,
                    image: 'mengobati.png',
                    title: 'Mengobati',
                  ),
                  const ItemWidget(
                    color: green,
                    image: 'mengantisipasi.png',
                    title: 'Mengantisipasi',
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
