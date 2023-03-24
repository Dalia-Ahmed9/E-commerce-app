import 'package:get/get.dart';

class CounterController extends GetxController {
  int counter = 0;

  void increment() {
    counter++;
    print('rebuilded');
    update();
  }

  void decrement() {
    counter--;
    print('rebuilded');
    update();
  }
}
