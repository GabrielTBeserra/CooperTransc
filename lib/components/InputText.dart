import 'package:flutter/material.dart';

Widget InputText(BuildContext context, text, controller,
    {icon, isPassword = false, requireValidation = '', isEmail}) {
  return Container(
    child: TextFormField(
      obscureText: isPassword,
      controller: controller,
      decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
            color: Colors.black,
          ),
          labelText: text,
          labelStyle: TextStyle(color: Theme.of(context).primaryColor)),
    ),
  );
}
