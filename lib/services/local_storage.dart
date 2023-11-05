import 'package:hive_flutter/hive_flutter.dart';
import 'package:imc_calculator/services/imc_calculator.dart';

class LocalStorage {
  static var box;
  static String imcUser = '';

  //initialize hive and open the box
  static Future<void> createStorage() async {
    await Hive.initFlutter();
    await Hive.openBox('history');
    box = Hive.box('history');
  }

  static writeData() {
    box.add(
      [
        ImcCalc.nameController.text.trim(),
        ImcCalc.weightUser,
        ImcCalc.heightUser,
        imcUser,
      ],
    );
  }
}
  ],
      );    
  }
}
