import 'dart:async';
import 'dart:math';

class Utils {
  int imageChangeAnimation() {
    int randomNumber = 0;
    Timer(const Duration(seconds: 30), () {
      Random ramdom = Random();
      randomNumber = ramdom.nextInt(10);
    });
    return randomNumber;
  }
}
