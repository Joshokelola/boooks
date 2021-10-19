import 'package:get/state_manager.dart';

class SliderController extends GetxController {
  var sliderVal = 1.obs;
 
  increment(newValue) {
    sliderVal = newValue.round();
  }
}
