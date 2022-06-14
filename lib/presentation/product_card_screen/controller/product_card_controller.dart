import '/core/app_export.dart';
import 'package:medusa_ecommerce/presentation/product_card_screen/models/product_card_model.dart';
import 'package:flutter/material.dart';
import 'package:medusa_ecommerce/data/models/id/get_id_resp.dart';
import 'package:medusa_ecommerce/data/apiClient/api_client.dart';

class ProductCardController extends GetxController with StateMixin<dynamic> {
  var id = Get.arguments[NavigationArgs.id];

  TextEditingController dropdownUnseleController = TextEditingController();

  TextEditingController dropdownSelectController = TextEditingController();

  Rx<ProductCardModel> productCardModelObj = ProductCardModel().obs;

  GetIdResp getIdResp = GetIdResp();

  @override
  void onReady() {
    super.onReady();
    this.callFetchId(
      successCall: _onFetchIdSuccess,
      errCall: _onFetchIdError,
      id: Get.arguments[NavigationArgs.id],
    );
  }

  @override
  void onClose() {
    super.onClose();
    dropdownUnseleController.dispose();
    dropdownSelectController.dispose();
  }

  void callFetchId(
      {VoidCallback? successCall, VoidCallback? errCall, String? id}) async {
    return Get.find<ApiClient>().fetchId(
        headers: {
          'Content-Type': 'application/json',
        },
        onSuccess: (resp) {
          onFetchIdSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onFetchIdError(err);
          if (errCall != null) {
            errCall();
          }
        },
        id: id);
  }

  void onFetchIdSuccess(var response) {
    getIdResp = GetIdResp.fromJson(response);
  }

  void onFetchIdError(var err) {
    if (err is NoInternetException) {
      Get.rawSnackbar(
        messageText: Text(
          '$err',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      );
    }
  }

  void _onFetchIdSuccess() {
    productCardModelObj.value.headlineTxt.value =
        getIdResp.product!.title!.toString();
    productCardModelObj.value.imageImg.value =
        getIdResp.product!.thumbnail!.toString();
    productCardModelObj.value.descriptionTxt.value =
        getIdResp.product!.description!.toString();
        productCardModelObj.value.handleTxt.value =
        getIdResp.product!.handle!.toString();
  }

  void _onFetchIdError() {}
}
