import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../themes/colors.dart';

class AccountInfo extends StatelessWidget {
  final bool isExpanded;

  const AccountInfo({Key? key, required this.isExpanded}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: isExpanded ? MediaQuery.of(context).size.height * .5 : 0,
      width: double.maxFinite,
      duration: const Duration(milliseconds: 400),
      child: Padding(
        padding: const EdgeInsets.only(right: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              infoAccount(),
              const SizedBox(
                height: 30,
              ),
              option(Icons.help, 'Me ajuda'),
              option(Icons.person_outline, 'Perfil'),
              option(Icons.attach_money, 'Configurar conta'),
              option(Icons.credit_card, 'Configurar cartão'),
              option(Icons.store, 'Pedir conta PJ'),
              option(Icons.mobile_screen_share, 'Configurações do app'),
              const Divider(
                color: Colors.white,
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 50,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    side: const BorderSide(width: 1, color: Colors.white),
                  ),
                  child: const Text(
                    'SAIR DA CONTA',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {},
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget infoAccount() {
    return Column(
      children: <Widget>[
        QrImage(
          data: "1234567890",
          version: QrVersions.auto,
          foregroundColor: kPrimaryColor,
          size: 100,
          backgroundColor: Colors.white,
        ),
        const SizedBox(
          height: 10,
        ),
        const Text.rich(
          TextSpan(
            text: 'Banco ',
            style: TextStyle(color: Colors.white),
            children: [
              TextSpan(
                text: '260 - Nu Pagamentos S.A.',
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        const Text.rich(
          TextSpan(
            text: 'Agência ',
            style: TextStyle(color: Colors.white),
            children: [
              TextSpan(
                text: '0001',
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        const Text.rich(
          TextSpan(
            text: 'Conta ',
            style: TextStyle(color: Colors.white),
            children: [
              TextSpan(
                text: ' 0000000-0',
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget option(IconData icon, String description) {
    return Column(
      children: <Widget>[
        const Divider(
          color: Colors.white,
          height: 0,
        ),
        InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: <Widget>[
                Icon(
                  icon,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Text(
                    description,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.white,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
