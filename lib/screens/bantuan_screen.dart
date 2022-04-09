import 'package:covid19/shared/constant.dart';
import 'package:covid19/widgets/item_widget.dart';
import 'package:flutter/material.dart';

class BantuanScreen extends StatelessWidget {
  const BantuanScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/bantuan.png',
          width: MediaQuery.of(context).size.width,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, top: 100),
          child: Text(
            'Pusat\nBantuan',
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
                    'Pusat Bantuan',
                    style: medium.copyWith(
                      color: black,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Jika anda mengalami gejala-gejala ',
                          style: regular.copyWith(
                            color: body,
                            fontSize: 14,
                          ),
                        ),
                        TextSpan(
                          text: 'seperti ini',
                          style: regular.copyWith(
                            color: green,
                            fontSize: 14,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        TextSpan(
                          text: ',\nsilahkan hubungi kontak di bawah.',
                          style: regular.copyWith(
                            color: body,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  ItemWidget(
                    color: green,
                    image: 'hotline.png',
                    title: 'Hotline',
                    custom: Container(
                      height: 32,
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        color: green,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Center(
                        child: Text(
                          'Panggil',
                          style: medium.copyWith(
                            color: white,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const ItemWidget(
                    color: blue,
                    image: 'chat.png',
                    title: 'Konsultasi Dokter',
                  ),
                  const ItemWidget(
                    color: orange,
                    image: 'hospital.png',
                    title: 'Rumah Sakit Terdekat',
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
