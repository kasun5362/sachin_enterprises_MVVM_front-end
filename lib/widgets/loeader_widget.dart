import 'package:flutter_easyloading/flutter_easyloading.dart';

class LoeaderWidget {
  final String message;
  LoeaderWidget({this.message = "Loading..."});

  showLoader() {
    EasyLoading.show(status: message);
  }

  hideLoader() {
    EasyLoading.dismiss();
  }
}
