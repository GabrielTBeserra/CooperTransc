import 'package:flutter/material.dart';

Widget Turn(context) {
  return Container(
    alignment: Alignment.topCenter,
    child: SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Container(
          alignment: Alignment.topCenter,
          margin: EdgeInsets.all(20),
          child: Table(
            border: TableBorder.all(
                color: Colors.black, style: BorderStyle.solid, width: 2),
            children: [
              TableRow(
                  decoration: BoxDecoration(color: Colors.green),
                  children: [
                    Column(children: [
                      Container(
                        padding: EdgeInsets.only(top: 10),
                        child: Text('001'),
                      )
                    ]),
                    Column(children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Text('26/10/2020 \n19:08:11'),
                      )
                    ]),
                    Column(children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Text(
                            'THIAGO HENRIQUE FARIA\nMarcou a vez na Matriz\m DF GO MS MG PR RJ RS SC'),
                      )
                    ]),
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Text(
                              'EJY-7802 - CV (VOLVO - VM 310 4X2T ANO:2011)\n Engatada com: CB - ASQ-7211'),
                        )
                      ],
                    ),
                  ]),
            ],
          ),
        ),
      ]),
    ),
  );
}
