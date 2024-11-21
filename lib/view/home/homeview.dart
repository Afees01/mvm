import 'package:flutter/material.dart';
import 'package:mvm/view/home/homeview_viewmodel.dart';
import 'package:stacked/stacked.dart';

class Homeview extends StatelessWidget {
  const Homeview({super.key, required this.splashVlaue});
  final int splashVlaue;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeviewViewmodel>.reactive(
        viewModelBuilder: () => HomeviewViewmodel(count: splashVlaue),
        onViewModelReady: (viewModel) {
          viewModel.count = 100;
        },
        onDispose: (viewModel) {},
        builder: (context, viewModel, child) => Scaffold(
              floatingActionButton: FloatingActionButton(
                onPressed: () {
                  viewModel.incrementCount();
                },
                child: Icon(Icons.add),
              ),
              body: Center(
                child: Text(viewModel.count.toString()),
              ),
            ));
  }
}
