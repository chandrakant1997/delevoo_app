import 'package:flutter/material.dart';

class Second extends StatefulWidget {
  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {
  String dropdownValue = '+1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      padding: EdgeInsets.only(bottom: 50),
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.40,
                height: MediaQuery.of(context).size.height * 0.140,
                child: Image.asset('images/ckp1.jpg'),
              ),
            ),
            Column(
              children: [
                Text(
                  "Delivoo",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Column(
              children: [
                Text(
                  "Delivering almost",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                Text("Everything."),
              ],
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 150),
          child: Container(
            // width: MediaQuery.of(context).size.width,
            // height: MediaQuery.of(context).size.height * 0.40,
            child: Image.asset('images/IMG_20201203_171457.jpg'),
          ),
        ),
        Row(
          children: [
            DropdownButton<String>(
              value: dropdownValue,
              icon: Icon(Icons.arrow_drop_down),
              iconSize: 24,
              //elevation: 1,
              style: TextStyle(color: Colors.black),
              /* underline: Container(
                height: 2,
                color: Colors.deepPurpleAccent,
              )*/
              onChanged: (String newValue) {
                setState(() {
                  dropdownValue = newValue;
                });
              },
              items: <String>['+1', '+2', '+3', '+4']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            Expanded(
              child: TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  border: InputBorder.none,

                  hintText: 'Enter Mobile number',
                  hintStyle: TextStyle(
                    color: Colors.black26,
                  ),
                  //   labelStyle: TextStyle(fontSize: 22, letterSpacing: 2, height: 0.5),
                  //icon: Icon(Icons.accessibility),
                ),
                cursorColor: Colors.black12,
                autocorrect: true,
                style: TextStyle(color: Colors.black),
              ),
            ),
            Container(
              height: 40,
              width: 120,
              child: Card(
                color: Color(0XFFAEE30D),
                margin: EdgeInsets.fromLTRB(0, 0, 8, 0),
                elevation: 1,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Continue',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
