import 'dart:async';
import 'package:provider/provider.dart';
import '../../../../product/manager/connectivity_manager.dart';
import '../../../../core/base/viewmodel/base_view_model.dart';
import 'package:shopping_app/core/extensions/app_extensions.dart';

class SplashViewModel extends BaseViewModel {
  @override
  void init() {
    Provider.of<ConnectivityManager>(context, listen: false)
        .startConnectivity();
    Timer(context.durationNormal, goToOnBoard);
  }
}
