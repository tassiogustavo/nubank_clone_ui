import 'package:flutter/material.dart';

class CardInfo extends StatelessWidget {
  const CardInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.2,
      child: Card(
        margin: const EdgeInsets.only(right: 20),
        child: Column(
          children: [
            Expanded(
              child: mainBlock(),
            ),
            otherBlock(),
          ],
        ),
      ),
    );
  }

  Widget mainBlock() {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              Icon(
                Icons.credit_card,
                size: 30,
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                'Cartão de Credito',
                style: TextStyle(fontSize: 18),
              )
            ],
          ),
          const Spacer(),
          Text(
            'FATURA ATUAL',
            style: TextStyle(
              fontSize: 16,
              color: Colors.blue[400],
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            'R\$ 1.546,25',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 28,
              color: Colors.blue[400],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text.rich(
            TextSpan(
              text: 'Limite disponível ',
              children: [
                TextSpan(
                  text: '4.542,22',
                  style: TextStyle(
                      color: Colors.green[400], fontWeight: FontWeight.bold),
                )
              ],
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }

  Widget otherBlock() {
    return Container(
      color: Colors.grey[200],
      padding: const EdgeInsets.all(30),
      child: Row(
        children: const [
          Icon(
            Icons.home,
            size: 40,
          ),
          SizedBox(
            width: 15,
          ),
          Expanded(
            child: Text(
              'Compra mais recente em Estabalecimente XPTO em Barretos Nobre Ville',
              style: TextStyle(fontSize: 16),
            ),
          ),
          Icon(Icons.keyboard_arrow_right)
        ],
      ),
    );
  }
}
