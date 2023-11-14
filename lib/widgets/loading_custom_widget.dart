import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class LoadingCustomWidget extends StatelessWidget {
  const LoadingCustomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return LoadingAnimationWidget.newtonCradle(
      color: Colors.blueGrey,
      size: 150,
      
    );
  }
}