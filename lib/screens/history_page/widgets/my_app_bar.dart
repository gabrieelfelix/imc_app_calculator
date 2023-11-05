import 'package:flutter/material.dart';
import 'package:imc_calculator/services/local_storage.dart';
import 'package:imc_calculator/provider/imc_manager.dart';
import 'package:provider/provider.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return Consumer<ImcManager>(
      builder: (context, imc, child) => AppBar(
        centerTitle: true,
        title: const Text(
          'Histórico',
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              icon: Icon(Icons.delete, color: Colors.grey),
              onPressed: () {
                imc.removeHistory();
              }),
        ],
      ),
    );
  }
}
