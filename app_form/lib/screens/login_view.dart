import 'package:flutter/material.dart';
import 'package:app_form/constans.dart';
import 'package:app_form/screens/register_view.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ColorPalette.primaryColor,
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Center(
              child: Column(
                children: <Widget>[
                  _iconLogin(),
                  _titleDescription(),
                  _textField(),
                  _buildButton(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _iconLogin() {
    return Image.asset(
              "assets/images/icon_login.jpg",
              width: 150.0,
              height: 150.0,
            );
  }

  Widget _titleDescription() {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 16.0),
        ),
        Text(
          "Login Untuk Mengakses",
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 12.0),
        ),
        Text(
          "Selamat Datang di Situs Kami",
          style: TextStyle(
            fontSize: 30.0,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _textField() {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 12.0),
        ),
        TextFormField(
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: ColorPalette.underlineTextField,
                width: 1.5,
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
                width: 3.0,
              ),
            ),
            hintText: "Username",
            hintStyle: TextStyle(color: ColorPalette.hintColor),
          ),
          style: TextStyle(color: Colors.white),
          autofocus: false,
        ),
        Padding(
          padding: EdgeInsets.only(top: 12.0),
        ),
        TextFormField(
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: ColorPalette.underlineTextField, 
                width: 1.5,
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
                width: 3.0,
              ),
            ),
            hintText: "Password",
            hintStyle: TextStyle(color: ColorPalette.hintColor),
          ),
          style: TextStyle(color: Colors.white),
          obscureText: true,
          autofocus: false,
        ),
      ],
    );
  }

  Widget _buildButton(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 16.0),
        ),
        InkWell(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            width: double.infinity,
            child: Text(
              'Login',
              style: TextStyle(color: ColorPalette.primaryColor),
              textAlign: TextAlign.center,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 16.0),
        ),
        Text(
          'or',
          style: TextStyle(
            color: Colors.white,
            fontSize: 12.0,
          ),
        ),
        FlatButton(
          child: Text(
            'Register',
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {
            Navigator.pushNamed(context, RegisterPage.routeName);
          },
        ),
      ],
    );
  }
}