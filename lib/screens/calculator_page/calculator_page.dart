import 'package:flutter/material.dart';
import 'package:imc_calculator/provider/imc_manager.dart';
import 'package:imc_calculator/screens/calculator_page/widgets/status.dart';
import 'package:imc_calculator/services/imc_calculator.dart';
import 'package:provider/provider.dart';
import 'package:imc_calculator/widgets/button.dart';

class CalculatorPage extends StatelessWidget {
  const CalculatorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ImcManager>(
      builder: (context, im, child) => SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.15,
            right: MediaQuery.of(context).size.width * 0.15,
            top: MediaQuery.of(context).size.height * 0.2,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _formImc(),
              MyButton(
                title: 'Calcular',
                onTap: () {
                  im.computationManager();
                  im.history();
                  FocusScope.of(context).unfocus();
                },
              ),
              const SizedBox(height: 20),
              const StatusView(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _formImc() {
    return Column(
      children: [
        const Align(
          alignment: Alignment.topLeft,
          child: Text(
            'Nome',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        TextField(
          controller: ImcCalc.nameController,
          cursorColor: Colors.black,
          decoration: const InputDecoration(
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
          ),
        ),
        const SizedBox(height: 25),
        const Align(
          alignment: Alignment.topLeft,
          child: Text(
            'IMC',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        const SizedBox(height: 10),
        TextField(
          keyboardType: TextInputType.number,
          controller: ImcCalc.weightController,
          cursorColor: Colors.black,
          decoration: const InputDecoration(
            hintText: 'Peso (kg)',
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
          ),
        ),
        const SizedBox(height: 20),
        TextField(
          keyboardType: TextInputType.number,
          controller: ImcCalc.heightController,
          cursorColor: Colors.black,
          decoration: const InputDecoration(
            hintText: 'Altura (m)',
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
          ),
        ),
        const SizedBox(height: 50),
      ],
    );
  }
}
