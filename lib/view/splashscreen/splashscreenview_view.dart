import 'package:flutter/material.dart';
import 'package:mvm/view/home/homeview.dart';
import 'package:stacked/stacked.dart';

class SplashscreenviewView extends BaseViewModel {
  void onInit(BuildContext context) {
    Future.delayed(Duration(seconds: 3)).then(
      (value) {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => Homeview(
                splashVlaue: 200,
              ),
            ));
      },
    );
  }
}
