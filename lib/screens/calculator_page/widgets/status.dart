import 'package:flutter/material.dart';
import 'package:imc_calculator/services/data.dart';
import 'package:provider/provider.dart';
import 'package:imc_calculator/provider/imc_manager.dart';

class StatusView extends StatelessWidget {
  const StatusView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ImcManager>(
      builder: (context, imc, child) => Column(
        children: [
          Text(
            (context).select((ImcManager imc) => imc.results),
            style: const TextStyle(fontSize: 35),
          ),
          const SizedBox(height: 30),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              imcData[imc.index]['IMC'],
              style: TextStyle(
                  color: imcData[imc.index]['cor'],
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          const SizedBox(height: 10),
          Text(imcData[imc.index]['descricao']),
        ],
      ),
    );
  }
}
