import 'package:cryto_app01/models/coins_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class CoinController extends GetxController {
  RxBool isLoading = true.obs;
  RxList<Coin> coinsList = <Coin>[].obs;

  //call the fectchCoins() upon the initialization of this controller
  @override
  void onInit(){
    super.onInit();
    fetchCoins();
  }

  

  fetchCoins() async {
    try {
      isLoading(true);
      var response = await http.get(
      Uri.parse(
        'https://api.coingecko.com/api/v3/coins/markets?vs_currency=inr&order=market_cap_desc&per_page=100&page=1&sparkline=false&locale=en',
      ),
    );
    List<Coin> coins = coinFromJson(response.body);
    coinsList.value = coins;
    } finally {
      isLoading(false);
    }
  }
}
