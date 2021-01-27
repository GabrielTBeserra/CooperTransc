import 'package:flutter/material.dart';

Widget TravelsScreen() {
  return Container(
    child: Center(
      child: Column(
        children: [
          Container(
            alignment: Alignment.topCenter,
            color: Colors.black38,
            margin: EdgeInsets.only(top: 5),
            child: Text(
              "Relatório de Viagens das últimas 48horas",
              style: TextStyle(
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 3),
            child: Text(
              "de 26/01/2021 até 27/01/2021",
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.only(top: 5, right: 10, left: 10, bottom: 8),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(241, 168, 153, 1),
                  borderRadius: BorderRadius.circular(3)),
              child: RichText(
                text:
                    TextSpan(style: TextStyle(color: Colors.black), children: [
                  WidgetSpan(child: Icon(Icons.warning)),
                  TextSpan(
                      text: "Atenção:",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: " Nenhuma viagem no período ...")
                ]),
              ))
        ],
      ),
    ),
  );
}
