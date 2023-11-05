import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  String title;
  Function() onTap;
  MyButton({Key? key, required this.title, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          padding: MaterialStateProperty.all(
            const EdgeInsets.symmetric(horizontal: 90, vertical: 30),
          ),
          backgroundColor: MaterialStateProperty.all(Colors.white),
        ),
        onPressed: onTap,
        child: Text(
          title,
          style: const TextStyle(color: Colors.black, fontSize: 15),
        ),
      ),
    );
  }
}
