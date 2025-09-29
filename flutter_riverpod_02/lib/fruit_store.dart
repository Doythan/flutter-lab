import 'package:flutter_riverpod/legacy.dart';

// 1. 창고 데이터
String data = "사과";

// 2. FruitStore는 창고이고, String은 창고 데이터 타입이다.
final fruitProvider = StateNotifierProvider<FruitStore, String>((ref) {
  // 3. 창고에 사과를 전달하고, 그 객체를 adminProvider 즉, 창고관리자가 관리한다.
  return FruitStore(data);
});

// 4. 창고
class FruitStore extends StateNotifier<String> {
  // 5. super.state는 전달 받은 사과를 data를 상태로 등록하는 코드이다.
  FruitStore(super.state);

  void changeData() {
    state = "딸기";
  }
}
