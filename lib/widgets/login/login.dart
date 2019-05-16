import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aporo'),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Form(
                child: Column(
              children: <Widget>[
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration:
                      const InputDecoration(hintText: 'Enter your email'),
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: const InputDecoration(hintText: 'Password'),
                ),
                FlatButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text(
                    'Submit',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () => Navigator.pushNamed(context,'campaigns'),
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
