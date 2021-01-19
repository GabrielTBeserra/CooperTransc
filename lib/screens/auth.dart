import 'package:coopertransc/components/Button.dart';
import 'package:coopertransc/components/InputText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  var formKey = GlobalKey<FormState>();
  var txtCpf = TextEditingController();
  var txtPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(right: 15, left: 15),
          child: Column(
            children: [
              Container(
                child: Center(
                  child: Container(
                    //padding: EdgeInsets.fromLTRB(0, 0, 0, 120),
                    child: Image.asset(
                      "images/coopertransc.png",
                      scale: 1,
                    ),
                  ),
                ),
              ),
              Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    InputText(context, "CPF", txtCpf, Icons.mail),
                    InputText(context, "Senha", txtPassword, Icons.assessment,
                        isPassword: true),
                    Button("Entrar", context)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
