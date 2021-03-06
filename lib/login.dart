import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String user = "";
  String pass = "";
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(240, 94, 100, 10),
        centerTitle: true,
        title: Text('AppRest'),
      ),
      body: Container(
        color: Color.fromRGBO(249, 246, 239, 10),
        child: Column(
          children: [
            SizedBox(
              height: 300.0,
            ),
            _userTextField(),
            SizedBox(
              height: 15.0,
            ),
            _userPassword(),
            SizedBox(
              height: 25,
            ),
            _bottonLogin()
          ],
        ),
      ),
    );
  }

  _userTextField() {
    return Container(
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            icon: Icon(Icons.email),
            hintText: 'Example@gmail.com',
            labelText: 'Correo Electronico'),
        onChanged: (String str) {
          user = str;
        },
        onSubmitted: (String str) {
          user = str;
        },
      ),
    );
  }

  _userPassword() {
    return Container(
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        obscureText: true,
        decoration: InputDecoration(
            icon: Icon(Icons.vpn_key),
            hintText: 'Contraseña',
            labelText: 'Contraseña'),
        onChanged: (String str) {
          pass = str;
        },
        onSubmitted: (String str) {
          pass = str;
        },
      ),
    );
  }

  _bottonLogin() {
    return RaisedButton(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
        child: Text('Iniciar sesión'),
      ),
      elevation: 10,
      color: Color.fromRGBO(42, 200, 194, 10),
      onPressed: () {
        Fluttertoast.showToast(
            msg: 'User: $user \n Pass: $pass',
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.grey,
            textColor: Colors.white,
            fontSize: 16.0);
      },
    );
  }
}
