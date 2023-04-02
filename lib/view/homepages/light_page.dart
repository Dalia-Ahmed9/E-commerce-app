import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LightScreen extends StatefulWidget {
  const LightScreen({super.key});

  @override
  State<LightScreen> createState() => _LightScreenState();
}

class _LightScreenState extends State<LightScreen> {
  bool value = false;
  var url = Uri.parse(
      'https://homeautomation-9d333-default-rtdb.firebaseio.com/board1/outputs/digital.json');

  Future<void> _toggleLight() async {
    await http.patch(url, body: json.encode({'12': value ? 1 : 0}));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Toggel Light',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              value ? 'Lamb is on ' : 'Lamb is off',
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: 40,
            ),
            ClipOval(
              child: Container(
                decoration: BoxDecoration(
                  color: value ? Colors.green : Colors.red,
                ),
                width: 100,
                height: 100,
                child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                        onTap: () async {
                          setState(() {
                            value = !value;
                          });
                          await _toggleLight();
                        },
                        child: Center(
                          child: Text(
                            value ? 'OFF' : 'ON',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        ))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
