import 'package:flutter/material.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({
    super.key,
  });
  // final String loading;
  @override
  Widget build(BuildContext context) {
    return const Center(
      child:  CircularProgressIndicator(
                backgroundColor: Colors.green,
               strokeWidth: 2,
              // strokeAlign: BorderSide.strokeAlignCenter,
                //semanticsLabel: String.fromEnvironment('mjhoko'),
               // semanticsValue: String.fromEnvironment('yousef'),
               
              ),
    );
  }
}