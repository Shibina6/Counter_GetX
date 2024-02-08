import 'package:get/get.dart';

class GetXcontroller extends GetxController
{
  RxInt count = 0.obs;

  void add()
  {
    count++;
  }

  void subtract()
  {
    count--;
  }
}