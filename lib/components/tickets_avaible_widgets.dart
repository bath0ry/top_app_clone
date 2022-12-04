import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TicketAvaibleWidgets extends StatelessWidget {
  const TicketAvaibleWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Image.asset(
                    'assets/images/qr.jpeg',
                    scale: 2.13,
                    alignment: Alignment.topCenter,
                  ),
                ),
                width: 100,
                height: 135,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            Column(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            'CPTM / METRÔ',
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                color: Color.fromARGB(255, 87, 87, 87)),
                          ),
                        ),
                        Text(
                          'UNI',
                          style: TextStyle(
                              fontWeight: FontWeight.w900,
                              color: Color.fromARGB(90, 3, 160, 155)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Text(
                            '0',
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                color: Color.fromARGB(255, 3, 160, 155)),
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(
                          255,
                          255,
                          255,
                          255,
                        ),
                        borderRadius: BorderRadius.circular(10)),
                    height: 60,
                    width: 250,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            'ÔNIBUS',
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                color: Color.fromARGB(255, 87, 87, 87)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 55),
                          child: Text(
                            'R\$',
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                color: Color.fromARGB(90, 3, 160, 155)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Text(
                            '0,00',
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                color: Color.fromARGB(255, 3, 160, 155)),
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(10)),
                    height: 60,
                    width: 250,
                  ),
                )
              ],
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          'HISTÓRICO',
          style: TextStyle(fontWeight: FontWeight.w400),
        ),
        SizedBox(
          height: 100,
        )
      ],
    );
  }
}
