import 'package:flutter/material.dart';
import 'package:nubank_clone/themes/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              buildTopWidgets(),
              const SizedBox(
                height: 15,
              ),
              buildTextTitleAndButtom('Conta', true),
              const SizedBox(
                height: 12,
              ),
              buildMoneyValue('951,76'),
              const SizedBox(
                height: 7,
              ),
              buildActions(),
              buildCard(
                  Icons.credit_card_outlined, 'Meus cartões', false, 1.57),
              buildCreditOptions(),
              buildLineSeparator(),
              buildTextTitleAndButtom('Cartão de crédito', true),
              const SizedBox(
                height: 7,
              ),
              buildSimpleText('Fatura atual'),
              buildMoneyValue('459,82'),
              buildSimpleText('Limite disponível de R\$ 2.726,85'),
              buildButtom('Parcelar compras', kWhiteOpacity, Colors.black87),
              buildLineSeparator(),
              buildTextTitleAndButtom('Empréstimo', false),
              const SizedBox(
                height: 12,
              ),
              buildSimpleText(
                  'Até R\$ 12.500,00 disponíveis no Nu ou até 90% do valor do seu carro de Cridtas'),
              const SizedBox(
                height: 12,
              ),
              buildCard(Icons.attach_money_outlined, 'Empréstimo do Nubank',
                  false, 0),
              const SizedBox(
                height: 5,
              ),
              buildCard(
                  Icons.food_bank_outlined, 'Empréstimo da Creditas', false, 0),
              buildLineSeparator(),
              buildTextTitleAndButtom('Investimentos', true),
              const SizedBox(
                height: 15,
              ),
              buildSimpleText(
                  'O jeito Nu de investir: sem asteriscos, linguagem fácil e a partir de R\$1. Saiba mais.'),
              buildLineSeparator(),
              buildTextTitleAndButtom('Seguros', false),
              const SizedBox(
                height: 15,
              ),
              buildSimpleText('Proteção para você cuidar do que importa'),
              buildCard(Icons.favorite_outline, 'Seguro vida', true, 0),
              buildCard(
                  Icons.phone_android_outlined, 'Seguro celular', true, 0),
              buildLineSeparator(),
              buildTextTitleAndButtom('Shopping', true),
              const SizedBox(
                height: 15,
              ),
              buildSimpleText(
                  'Vantagens exclusivas das nossas marcas preferidas'),
              buildLineSeparator(),
              buildTextTitleAndButtom('Descubra mais', false),
              buildFindMore(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildLineSeparator() {
    return Container(
      width: double.infinity,
      height: 3,
      margin: const EdgeInsets.only(top: 15, bottom: 15),
      color: const Color.fromRGBO(235, 235, 235, 92),
    );
  }

  Widget buildCreditOptions() {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
      child: SizedBox(
        width: double.infinity,
        height: 70,
        child: ListView.builder(
            itemCount: 3,
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index) {
              return Container(
                height: 50,
                width: 300,
                margin: const EdgeInsets.only(right: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromRGBO(235, 235, 235, 92),
                ),
                child: Center(
                  child: SizedBox(
                    width: 250,
                    child: Text([
                      'Parcele compras feitas à vista no crédito.',
                      'Você tem até R\$ 12.500,00 disponíveis para empréstimo.',
                      'Salve seus amigos da burocracia. Faça um convite ...',
                    ][index]),
                  ),
                ),
              );
            }),
      ),
    );
  }

  Widget buildCard(IconData icon, String text, bool visible, double angle) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromRGBO(235, 235, 235, 92),
        ),
        child: Row(
          children: [
            const SizedBox(
              width: 20,
            ),
            Transform.rotate(
              angle: angle,
              child: Icon(icon),
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              text,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            Visibility(
              visible: visible,
              child: const Text(
                'Conhecer',
                style: TextStyle(
                    color: Colors.purple,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildActions() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        width: double.infinity,
        height: 120,
        margin: const EdgeInsets.only(left: 5),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 9,
          itemBuilder: (_, index) {
            return Column(
              children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(235, 235, 235, 92),
                  ),
                  child: Center(
                    child: Icon(
                      [
                        Icons.monetization_on_outlined,
                        Icons.pix_outlined,
                        Icons.qr_code,
                        Icons.money,
                        Icons.monetization_on,
                        Icons.phone_android_outlined,
                        Icons.phone,
                        Icons.favorite_outline,
                        Icons.monetization_on,
                      ][index],
                      size: 25,
                      color: Colors.black87,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  child: Text(
                    [
                      'Pegar emprestado',
                      'Área Pix',
                      'Pagar',
                      'Transferir',
                      'Depositar',
                      'Recarga de celular',
                      'Cobrar',
                      'Doação',
                      'Transferir Internac',
                    ][index],
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  width: 90,
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget buildTextTitleAndButtom(String text, bool visible) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Row(
        children: [
          Text(
            text,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          Visibility(
            visible: visible,
            child: const Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.black54,
              size: 18,
            ),
          )
        ],
      ),
    );
  }

  Widget buildMoneyValue(String valueText) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 15,
      ),
      child: Align(
        alignment: Alignment.topLeft,
        child: Text(
          'R\$ $valueText',
          style: const TextStyle(
            fontSize: 25,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget buildSimpleText(String valueText) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, left: 15, bottom: 5),
      child: Align(
        alignment: Alignment.topLeft,
        child: Text(
          valueText,
          style: const TextStyle(
            fontSize: 15,
            color: Colors.black54,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget buildTopWidgets() {
    return Container(
      color: kPrimaryColor,
      width: double.infinity,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Container(
                  child: const Icon(
                    Icons.person_outline,
                    color: Colors.white,
                    size: 30,
                  ),
                  width: 55,
                  height: 55,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: kPrimaryColorLight),
                ),
                const Spacer(),
                const Icon(
                  Icons.remove_red_eye_outlined,
                  color: Colors.white,
                  size: 27,
                ),
                const SizedBox(
                  width: 15,
                ),
                const Icon(
                  Icons.help_outline,
                  color: Colors.white,
                  size: 27,
                ),
                const SizedBox(
                  width: 15,
                ),
                const Icon(
                  Icons.person_add_alt_1_outlined,
                  color: Colors.white,
                  size: 27,
                ),
              ],
            ),
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 15, top: 5, bottom: 15),
              child: Text(
                'Olá, Tassio',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildButtom(String text, Color color, Color colorText) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
          padding: const EdgeInsets.only(left: 15, top: 15),
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(color),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                text,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: colorText,
                ),
              ),
            ),
          )),
    );
  }

  Widget buildFindMore() {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
      child: SizedBox(
        height: 300,
        child: ListView.builder(
            itemCount: 2,
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index) {
              return Container(
                width: 220,
                margin: const EdgeInsets.only(right: 20, bottom: 40),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10)),
                  color: Color.fromRGBO(235, 235, 235, 92),
                ),
                child: Column(
                  children: [
                    Container(
                      width: 220,
                      height: 100,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            topLeft: Radius.circular(10),),
                        color: Colors.red,
                      ),
                      child: Image.network(
                        [
                          'https://blog.nubank.com.br/wp-content/uploads/2021/05/Novo-ogo-Nubank_header.jpg',
                          'https://nubank.com.br/images-cms/1648764600-card-and-phone-xs-3x.jpg?w=360&dpr=1&auto=compress',
                        ][index],
                        fit: BoxFit.fill,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, bottom: 15, top: 20),
                      child: SizedBox(
                        width: 200,
                        child: Text(
                          [
                            'Parcele compras no app',
                            'Indique seus amigos',
                          ][index],
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: SizedBox(
                        width: 200,
                        child: Text(
                          [
                            'Descontos em compras à vista no crédito, controle total sobr...',
                            'Mostre aos seus amigos como é fácil ter uma vida sem...',
                          ][index],
                          style: const TextStyle(fontSize: 14),
                        ),
                      ),
                    ),
                    buildButtom(['Conhecer', 'Indicar amigos'][index],
                        kPrimaryColor, Colors.white),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
