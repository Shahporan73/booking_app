import 'package:get/get.dart';

class FavoriteController extends GetxController{
  var isLoading = false.obs;
  var isSelected = 'Upcoming'.obs;
  void updateSelectedProduct(newData){
    isSelected.value = newData;
  }
}