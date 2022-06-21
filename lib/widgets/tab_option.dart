import 'package:flutter/material.dart';

class TabOption extends StatelessWidget {
  const TabOption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Row(
            children: [
              Container(
                height: 100,
                color: const Color.fromRGBO(255, 255, 255, .2),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Icon(
                        Icons.person_add,
                        color: Colors.white,
                        size: 30,
                      ),
                      Spacer(),
                      Text(
                        'Indicar amigos',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: index == 9 ? 20 : 5,
              )
            ],
          );
        },
      ),
    );
  }
}
