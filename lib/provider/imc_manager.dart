import 'package:flutter/material.dart';
import '../services/imc_calculator.dart';
import 'package:imc_calculator/services/local_storage.dart';

class ImcManager with ChangeNotifier {
  int currentIndex = 0;
  String results = '';
  double status = 0;
  int index = 8;
  List<List<dynamic>> historyList = [];
  var pageController = PageController();

  // loads and changes the PageController
  void loadPage() {
    pageController = PageController(initialPage: currentIndex);
  }

  // change navbar indexes
  void changeNavBar(value) {
    currentIndex = value;
    notifyListeners();
  }

  // receives BMI and checks user status
  void computationManager() {
    results = ImcCalc.computation().toStringAsFixed(2);
    LocalStorage.imcUser = results;
    situationStatus();
    notifyListeners();
  }

  // writes data and adds it to variable provider for updates
  void history() {
    if (ImcCalc.nameController.text != '' &&
        (ImcCalc.weightController.text != '' &&
            ImcCalc.heightController.text != '')) {
      LocalStorage.writeData();
      historyList.add(LocalStorage.box.get(LocalStorage.box.length - 1));
      ImcCalc.clearInput();
    }

    notifyListeners();
  }

  //get data from hive
  void getHistory() {
    historyList = List.from(LocalStorage.box.values.toList());
  }

  // remove all data
  void removeHistory() {
    LocalStorage.box.clear();
    historyList = [];
    notifyListeners();
  }

  // checks the user's status and filters the BMI
  void situationStatus() {
    status = double.parse(results);
    if (status < 16) {
      index = 0;
    } else if (status >= 16 && status <= 16.99) {
      index = 1;
    } else if (status >= 17 && status <= 18.49) {
      index = 2;
    } else if (status >= 18.5 && status <= 24.99) {
      index = 3;
    } else if (status >= 25 && status <= 29.99) {
      index = 4;
    } else if (status >= 30 && status <= 34.99) {
      index = 5;
    } else if (status >= 35 && status <= 39.99) {
      index = 6;
    } else if (status >= 40) {
      index = 7;
    } else {
      index = 8;
    }
    notifyListeners();
  }
}
