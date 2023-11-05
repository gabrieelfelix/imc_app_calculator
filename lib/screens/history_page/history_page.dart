import 'package:flutter/material.dart';
import 'package:imc_calculator/screens/history_page/widgets/my_app_bar.dart';
import 'package:imc_calculator/provider/imc_manager.dart';
import 'package:provider/provider.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ImcManager>(
      builder: (context, imc, child) => Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: const MyAppBar(),
        body: ListView.builder(
          itemCount: imc.historyList.length,
          itemBuilder: (context, index) => ListTile(
            title:
                Text(imc.historyList[(imc.historyList.length - 1) - index][0]),
            subtitle: Text(
              'Peso: ${imc.historyList[(imc.historyList.length - 1) - index][1]}  Altura: ${imc.historyList[(imc.historyList.length - 1) - index][2]}',
            ),
            trailing: Text(
              imc.historyList[(imc.historyList.length - 1) - index][3],
            ),
          ),
        ),
      ),
    );
  }
}
