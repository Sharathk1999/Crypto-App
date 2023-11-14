import 'package:cryto_app01/controllers/coin_controller.dart';
import 'package:cryto_app01/utils/colors.dart';
import 'package:cryto_app01/utils/functions.dart';
import 'package:cryto_app01/widgets/loading_custom_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  

  @override
  Widget build(BuildContext context) {
    final CoinController coinController = Get.put(CoinController());
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
                Obx(
                 ()=> coinController.isLoading.value ?const Center(child:  LoadingCustomWidget()):  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: coinController.coinsList.length,
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
                                      boxShadow:const [
                                        BoxShadow(
                                          color: shadeGreyColor,
                                          offset:  Offset(3, 3),
                                          blurRadius: 3,
                                        )
                                      ],
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.network(
                                        coinController.coinsList[index].image,
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
                                    coinController.coinsList[index].name,
                                    style: textStyle(
                                      15,
                                      whiteColor,
                                      FontWeight.bold,
                                    ),
                                  ),
                                  Shimmer.fromColors(
                                    baseColor: greyColor,
                                    period:const Duration(seconds: 2),
                                    highlightColor:  coinController.coinsList[index].priceChangePercentage24H < 1 ? Colors.redAccent   : Colors.green,
                                    child: Text(
                                      '${coinController.coinsList[index].priceChangePercentage24H.toStringAsFixed(2)} %',
                                      style: textStyle(
                                        14,
                                         greyColor,
                                        FontWeight.w600,
                                      ),
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
                                    '₹ ${coinController.coinsList[index].currentPrice.round()}',
                                    style: textStyle(
                                      15,
                                      whiteColor,
                                      FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    coinController.coinsList[index].symbol.toUpperCase(),
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
