import 'package:flutter/material.dart';
import 'package:imc_calculator/provider/imc_manager.dart';
import 'package:imc_calculator/screens/calculator_page/calculator_page.dart';
import 'package:imc_calculator/screens/history_page/history_page.dart';
import 'widgets/bottom_nav_bar.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    Provider.of<ImcManager>(context, listen: false).loadPage();
    Provider.of<ImcManager>(context, listen: false).getHistory();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ImcManager>(
      builder: (context, imc, child) => Scaffold(
        backgroundColor: Colors.grey[200],
        bottomNavigationBar: const MyNavBar(),
        body: PageView(
          onPageChanged: (value) => imc.changeNavBar(value),
          controller: imc.pageController,
          children: const [
            CalculatorPage(),
            HistoryPage(),
          ],
        ),
      ),
    );
  }
}
