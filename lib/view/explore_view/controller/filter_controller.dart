import 'package:get/get.dart';

class FilterController extends GetxController {
  // Checkbox states
  var location = <String, bool>{}.obs;
  var propertyType = <String, bool>{}.obs;
  var hotelFeature = <String, bool>{}.obs;
  var roomOptions = <String, bool>{}.obs;

  // Range slider values
  var currentMinPrice = 30.0.obs;
  var currentMaxPrice = 100.0.obs;

  // Selected rating
  var selectedRating = 3.obs;

  // Initialize checkboxes with default values
  @override
  void onInit() {
    super.onInit();
    location.addAll({
      'New York': false,
      'Berlin': false,
      'Santiago': false,
      'Phuket': false,
    });

    propertyType.addAll({
      'Hotels': false,
      'Resorts': false,
      'Apartments': false,
      'Hostels': false,
    });


    hotelFeature.addAll({
      'Free Wi-Fi': false,
      'Parking (free/paid)': false,
      'Swimming Pool': false,
      'Spa & Wellness Center': false,
    });
    roomOptions.addAll({
      'Single Room': false,
      'Double Room': false,
      'Connecting Rooms': false,
      'Non-Smoking Rooms': false,
      'Accessible Rooms': false,
    });
  }

  void toggleLocation(String name, bool value) {
    location[name] = value;
  }

  void togglePropertyType(String name, bool value) {
    propertyType[name] = value;
  }

  void toggleHotelFeature(String name, bool value) {
    hotelFeature[name] = value;
  }

  void toggleRoomOption(String name, bool value) {
    roomOptions[name] = value;
  }
}
