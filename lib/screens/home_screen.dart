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
          padding: const EdgeInsets.only(
            left: 15,
            top: 5,
            right: 15
          ),
          child: SingleChildScrollView(
            physics: const ScrollPhysics(),
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
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 12, top: 10),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 60,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: shadeGreyColor,
                                    borderRadius: BorderRadius.circular(12),
                                    boxShadow: [
                                      BoxShadow(
                                        color: shadeGreyColor!,
                                        offset: const Offset(3, 3),
                                        blurRadius: 3,
                                      )
                                    ],
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.network(
                                      'https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/Bitcoin.svg/1200px-Bitcoin.svg.png',
                                    ),
                                  ),
                                ),
                                 const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                 const SizedBox(
                              height: 10,
                            ),
                                Text(
                                  'Bitcoin',
                                  style: textStyle(
                                    15,
                                    whiteColor,
                                    FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '10%',
                                  style: textStyle(
                                    14,
                                    greyColor,
                                    FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                              ],
                            ),
                           
                             Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                  const SizedBox(
                              height: 10,
                            ),
                                Text(
                                  '\$ 200',
                                  style: textStyle(
                                    15,
                                    whiteColor,
                                    FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'BI',
                                  style: textStyle(
                                    14,
                                    greyColor,
                                    FontWeight.w600,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
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
