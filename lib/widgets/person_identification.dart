import 'package:flutter/material.dart';

class PersonIdentification extends StatelessWidget {
  const PersonIdentification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'images/nubank_logo.png',
          width: 50,
          color: Colors.white,
        ),
        const Padding(padding: EdgeInsets.only(right: 8)),
        const Text(
          'Tassio',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
