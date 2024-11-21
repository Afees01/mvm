import 'package:flutter/material.dart';
import 'package:mvm/view/splashscreen/splashscreenview_view.dart';
import 'package:stacked/stacked.dart';

class Spalshscreeview extends StatelessWidget {
  const Spalshscreeview({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.nonReactive(
      viewModelBuilder: () => SplashscreenviewView(),
      onViewModelReady: (viewModel) {
        viewModel.onInit(context);
      },
      builder: (context, viewModel, child) => Scaffold(
        body: Center(
          child: Text("splash"),
        ),
      ),
    );
  }
}
