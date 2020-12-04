import 'package:delevoo_app/login.dart';
import 'package:flutter/material.dart';

class New extends StatefulWidget {
  @override
  _NewState createState() => _NewState();
}

class _NewState extends State<New> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
          size: 20,
        ),
        title: Text(
          'Register',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      drawerScrimColor: Colors.black,
      body: ListView(
        padding: EdgeInsets.only(top: 40),
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: 'Please Enter Full Name Here',
              labelText: 'FULL NAME',
              border: OutlineInputBorder(borderSide: BorderSide.none),
              hintStyle: TextStyle(
                color: Colors.black26,
              ),
              labelStyle:
                  TextStyle(fontSize: 18, height: 0.5, color: Colors.black54),
              icon: Icon(
                Icons.person_outline,
                color: Colors.black38,
              ),
            ),
            cursorColor: Colors.black12,
            autocorrect: true,
            style: TextStyle(color: Colors.black),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'Please Enter Email Here',
              labelText: 'EMAIL ADDRESS',
              border: OutlineInputBorder(borderSide: BorderSide.none),
              hintStyle: TextStyle(
                color: Colors.black26,
              ),
              labelStyle:
                  TextStyle(fontSize: 18, height: 0.5, color: Colors.black54),
              icon: Icon(
                Icons.mail_outline,
                color: Colors.black38,
              ),
            ),
            cursorColor: Colors.black12,
            autocorrect: true,
            style: TextStyle(color: Colors.black),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'Please Enter Phone Number Here',
              labelText: 'PHONE NUMBER',
              border: OutlineInputBorder(borderSide: BorderSide.none),
              hintStyle: TextStyle(
                color: Colors.black26,
              ),
              labelStyle:
                  TextStyle(fontSize: 18, height: 0.5, color: Colors.black54),
              icon: Icon(
                Icons.phone_android,
                color: Colors.black38,
              ),
            ),
            cursorColor: Colors.black12,
            autocorrect: true,
            style: TextStyle(color: Colors.black),
          ),
          Container(
              padding: EdgeInsets.fromLTRB(40, 20, 10, 10),
              child: Text(
                "We'll send verification code on above given number",
                style: TextStyle(fontSize: 12, color: Colors.black38),
              )),
          SizedBox(
            height: 100,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.07,
            color: Color(0XFFAEE30D),
            child: FlatButton(
                child: Center(
                  child: Text(
                    "Continue",
                    style: TextStyle(
                        fontSize: 19,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Second()),
                  );
                }),
          )
        ],
      ),
    );
  }
}
