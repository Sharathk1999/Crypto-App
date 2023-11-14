import 'package:cryto_app01/utils/colors.dart';
import 'package:cryto_app01/utils/functions.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, top: 5),
          child: SingleChildScrollView(
            physics:const ScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Crypto App',
                  style: textStyle(
                    22,
                    whiteColor,
                    FontWeight.bold,
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics:const NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                      return Container();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
