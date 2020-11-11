import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
//  comment
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          body: Container(
            padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
              constraints: BoxConstraints.expand(),
              color: Colors.black,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: Container(
                      width: 50,
                      height: 50,
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Color(0xffd8d8d8)),
                      child: FlutterLogo())
              ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                    child: Text("HELLO \nWELCOME BACK", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                    child: TextField(
                      style: TextStyle(fontSize: 12, color: Colors.white),
                      decoration: InputDecoration(
                          labelText: "USERNAME",
                          labelStyle:
                          TextStyle(color: Color(0xff888888), fontSize:15)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                    child: Stack(
                      alignment: AlignmentDirectional.centerEnd,
                      children: <Widget>[
                        TextField(
                          style: TextStyle(fontSize: 12, color: Colors.white),
                          obscureText: true,
                          decoration: InputDecoration(
                              labelText: "PASSWORD",
                              labelStyle:
                              TextStyle(color: Color(0xff888888), fontSize:15)),
                        ),
                        Text ('SHOW', style: TextStyle(color: Colors.red, fontSize: 10.0))
                    ],
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 40,
                    child: RaisedButton(
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8))
                    ),
                    onPressed: onSignInClicked,
                    child: Text('SIGN IN',)

                  ),
                  ),
                Padding(
                 padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),child: Container(
                  height: 100,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "NEW USER? SIGN UP",
                        style:
                          TextStyle(fontSize: 10, color:Color(0xff8888888)),
                      ),
                      Text(
                        "FORGOT PASSWORD",
                        style:
                        TextStyle(fontSize: 10, color:Color(0xff8888888)),
                      ),
                    ],
                  )
                )),
                ],
              )
          ),
        )
    );
  }
  void onSignInClicked(){}
}
