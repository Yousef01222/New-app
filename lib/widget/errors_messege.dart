import 'package:flutter/material.dart';

class ErrorMessege extends StatelessWidget {
  const ErrorMessege({super.key, required this.massege});
  final String massege;
  @override
  Widget build(BuildContext context) {
    return Text(
      massege,
      style:const TextStyle(color: Colors.black, fontSize: 20),
    );
  }
}
