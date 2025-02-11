import 'package:get/get.dart';

class HotelDetailsController extends GetxController{
  var isLoading = false.obs;
  var isSelected = 'Descriptions'.obs;
  void updateSelectedButton(newData){
    isSelected.value = newData;
  }
}