import 'package:medusa_ecommerce/core/app_export.dart';
import 'package:medusa_ecommerce/core/utils/progress_dialog_utils.dart';

class ApiClient extends GetConnect {
  var baseUrl = "http://192.168.150.157:9000";

  @override
  void onInit() {
    super.onInit();
    httpClient.timeout = Duration(seconds: 60);
    httpClient.addRequestModifier<dynamic>((request) {
      Map<String, String> headers = {
        "Content-Type": "application/json"
      };
      request.headers.addAll(headers);
      return request;
    });
  }

  ///method can be used for checking internet connection
  ///returns [bool] based on availability of internet
  Future isNetworkConnected() async {
    if (!await Get.find<NetworkInfo>().isConnected()) {
      throw NoInternetException('No Internet Found!');
    }
  }

  Future fetchId(
      {Function(dynamic data)? onSuccess,
      Function(dynamic error)? onError,
      Map<String, String> headers = const {},
      String? id = ''}) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response =
          await httpClient.get('/store/products/$id', headers: headers);
      ProgressDialogUtils.hideProgressDialog();
      if (response.statusCode == 200) {
        onSuccess!(response.body);
      } else {
        onError!(
          response.hasError ? response.statusText : 'Something Went Wrong!',
        );
      }
    } catch (error) {
      ProgressDialogUtils.hideProgressDialog();
      onError!(error);
    }
  }

  Future fetchProducts(
      {Function(dynamic data)? onSuccess,
      Function(dynamic error)? onError,
      Map<String, String> headers = const {}}) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response =
          await httpClient.get('/store/products', headers: headers);
      ProgressDialogUtils.hideProgressDialog();
      if (response.statusCode == 200) {
        onSuccess!(response.body);
      } else {
        onError!(
          response.hasError ? response.statusText : 'Something Went Wrong!',
        );
      }
    } catch (error) {
      ProgressDialogUtils.hideProgressDialog();
      onError!(error);
    }
  }
}
