import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TravelsScreen extends StatefulWidget {
  @override
  _TravelsScreenState createState() => _TravelsScreenState();
}

class _TravelsScreenState extends State<TravelsScreen> {
  var now;
  var formatter;
  String formattedDate;
  var oldDate;
  var oldDateform;

  @override
  void initState() {
    loadTeste();
    super.initState();
  }

  loadTeste() {
    now = new DateTime.now();
    oldDate = new DateTime(now.year, now.month, now.day - 1);

    formatter = new DateFormat('dd/MM/yyyy');
    formattedDate = formatter.format(now);
    oldDateform = formatter.format(oldDate);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child: Center(
        child: Column(
          children: [
            Container(
              color: Colors.black38,
              margin: EdgeInsets.only(top: 5),
              child: Text(
                "Relatório de Viagens das últimas 48 horas",
                style: TextStyle(
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 3),
              child: Text(
                'de $oldDateform até $formattedDate',
                style:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
                margin: EdgeInsets.all(10),
                padding:
                    EdgeInsets.only(top: 5, right: 10, left: 10, bottom: 8),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(241, 168, 153, 1),
                    borderRadius: BorderRadius.circular(3)),
                child: RichText(
                  text: TextSpan(
                      style: TextStyle(color: Colors.black),
                      children: [
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
}
