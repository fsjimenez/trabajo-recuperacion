import 'package:get/get.dart';

class CarnetController extends GetxController {
  final RxString name = "".obs;
  final RxString identification = "".obs;
  final RxString charge = "".obs;
  final RxString modality = "".obs;
  final RxString specialty = "".obs;
  final RxString photo = "".obs;
  final RxString qr = "".obs;

  void setData(Map<String, String> data) {
    name.value = data["name"]!;
    identification.value = data["identification"]!;
    charge.value = data["charge"]!;
    modality.value = data["modality"]!;
    specialty.value = data["specialty"]!;
    photo.value = data["photo"]!;
    qr.value = data["qr"]!;
  }
}
