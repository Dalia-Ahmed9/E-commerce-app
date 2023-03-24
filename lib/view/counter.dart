import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/CounterContrller.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: GetBuilder<CounterController>(
        init: CounterController(),
        builder: (Controller) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                Controller.increment();
              },
              icon: Icon(
                Icons.add,
                size: 30,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              '${Controller.counter}',
              style: TextStyle(fontSize: 40),
            ),
            SizedBox(
              height: 40,
            ),
            IconButton(
              onPressed: () {
                Controller.decrement();
              },
              icon: Icon(
                Icons.exposure_minus_1,
                size: 30,
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
