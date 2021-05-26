import 'package:coopertransc/components/ButtonDatePicker.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class MYTravels extends StatefulWidget {
  @override
  _MYTravelsState createState() => _MYTravelsState();
}

class _MYTravelsState extends State<MYTravels> {
  DateTime especificDate;
  DateTime startDate;
  DateTime endDate;
  var day;
  var month;
  var year;
  var dropdownValue;

  @override
  void initState() {
    especificDate = DateTime.now();
    startDate = DateTime.now();
    endDate = DateTime.now();
    day = "DIA";
    month = "MES";
    year = "ANO";
    dropdownValue = "ESTADO";
    super.initState();
  }

  Future<DateTime> _selectDate(BuildContext context, DateTime dateTime) async {
    DateTime picked = await showDatePicker(
        context: context,
        initialDate: dateTime,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));

    if (picked != null && picked != dateTime) {
      return picked;
    } else {
      return dateTime;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Center(
          child: Text("Busca"),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buttonDatePicker(
              'Dia especifico:  ${especificDate.day}/${especificDate.month}/${especificDate.year}',
              context,
              action: () => _selectDate(context, especificDate),
            ),
            DropdownButton<String>(
              value: dropdownValue,
              icon: Icon(Icons.arrow_downward),
              iconSize: 24,
              elevation: 16,
              onChanged: (String newValue) {
                setState(() {
                  dropdownValue = newValue;
                });
              },
              items: <String>[
                'ESTADO',
                'AC',
                'AL',
                'AP',
                'AM',
                'BA',
                'CE',
                'ES',
                'GO',
                'MA',
                'MT',
                'MS',
                'MG',
                'PA',
                'PB',
                'PR',
                'PE',
                'PI',
                'RJ',
                'RN',
                'RS',
                'RO',
                'RR',
                'SC',
                'SP',
                'SE',
                'TO',
                'DF'
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            )
          ],
        ),
        Center(
          child: Text("Intervalo de datas"),
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Expanded(
            child: buttonDatePicker(
              'Data Inicio: ${startDate.day}/${startDate.month}/${startDate.year}',
              context,
              action: () => _selectDate(context, startDate),
            ),
          ),
          RichText(
              text: TextSpan(
                  text:
                      'Data Fim:${endDate.day}/${endDate.month}/${endDate.year}',
                  recognizer: TapGestureRecognizer()
                    ..onTap = () async => {_selectDate(context, endDate)})),
          Expanded(
            child: buttonDatePicker(
                'Data Fim:${endDate.day}/${endDate.month}/${endDate.year}',
                context,
                action: () => _selectDate(context, endDate)),
          )
        ])
      ],
    ));
  }
}
