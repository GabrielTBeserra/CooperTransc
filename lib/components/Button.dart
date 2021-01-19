import 'package:flutter/material.dart';

Widget Button(rotulo, BuildContext context,
    {Widget page, funcao, formKey, requireValidation, action}) {
  return Container(
      padding: EdgeInsets.only(top: 15),
      child: RaisedButton(
        padding: EdgeInsets.all(16.0),
        child: Text(rotulo,
            style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white)),
        color: Theme.of(context).primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(3),
        ),
        onPressed: () {
          if (formKey != null) {
            if (!formKey.currentState.validate()) return;
          }
          if (action != null) {
            action();
          } else {
            if (page != null) {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => page));
            }
          }
        },
      ));
}
