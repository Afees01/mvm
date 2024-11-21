import 'package:stacked/stacked.dart';

class HomeviewViewmodel extends BaseViewModel {
  HomeviewViewmodel({required this.count});

  late int count;
  incrementCount() {
    count++;
    notifyListeners();
  }
}
