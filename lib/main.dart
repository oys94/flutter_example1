import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Google',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomepage(),
    );
  }
}

class MyHomepage extends StatelessWidget {
  String searchText = '';

  MyHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              const Text.rich(TextSpan(children: <TextSpan>[
                TextSpan(
                    text: 'G',
                    style: TextStyle(
                        fontSize: 120, color: Color.fromRGBO(66, 133, 244, 1))),
                TextSpan(
                    text: 'o',
                    style: TextStyle(
                        fontSize: 80,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(234, 67, 53, 1))),
                TextSpan(
                    text: 'o',
                    style: TextStyle(
                        fontSize: 80,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(251, 188, 5, 1))),
                TextSpan(
                    text: 'g',
                    style: TextStyle(
                        fontSize: 80,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(66, 133, 244, 1))),
                TextSpan(
                    text: 'l',
                    style: TextStyle(
                        fontSize: 80,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(52, 168, 83, 1))),
                TextSpan(
                    text: 'e',
                    style: TextStyle(
                        fontSize: 80,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(234, 67, 53, 1))),
              ])),
              SizedBox(
                  width: 550,
                  height: 70,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Google 검색 또는 URL 입력',
                        hintStyle: const TextStyle(
                          color: Color.fromRGBO(95, 99, 104, 1),
                          fontSize: 16,
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        prefixIcon: GestureDetector(
                          child: const Icon(
                            Icons.search,
                            color: Color.fromRGBO(205, 208, 211, 1),
                            size: 20,
                          ),
                        )),
                    textInputAction: TextInputAction.go,
                    onSubmitted: (text) async {
                      launchUrl(Uri.parse('https://www.google.com/search?q=$text'));
                    },
                  ))
            ])));
  }
}
