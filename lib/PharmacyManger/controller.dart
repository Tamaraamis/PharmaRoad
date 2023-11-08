import 'package:flutter/widgets.dart';
import 'package:flutter_application_2/PharmacyManger/drug_model.dart';
import 'package:get/get.dart';
//import 'dart:convert';

class DrugController extends GetxController {
  Rx<List<DrugModel>> drug = Rx<List<DrugModel>>([]);
  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController prescriptionTextEditingController =
      TextEditingController();
  late DrugModel drugmodel;
  var itemCount = 0.obs;

  void OnInit() {
    super.onInit();
  }

  void onReady() {
    super.onReady();
  }

  void onClose() {
    super.onClose();
    nameTextEditingController.dispose();
    prescriptionTextEditingController.dispose();
  }

  addDrug(String Name, String Prescription) {
    drugmodel = DrugModel(Name: Name, Prescription: Prescription);
    drug.value.add(drugmodel);
    itemCount.value = drug.value.length;
    nameTextEditingController.clear();
    prescriptionTextEditingController.clear();
  }

  removeDrug(int index) {
    drug.value.removeAt(index);
    itemCount.value = drug.value.length;
  }
}
