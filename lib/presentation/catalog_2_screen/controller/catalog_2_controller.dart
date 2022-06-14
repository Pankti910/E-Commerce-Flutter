import '/core/app_export.dart';
import 'package:medusa_ecommerce/presentation/catalog_2_screen/models/catalog_2_model.dart';
import 'package:flutter/material.dart';
import 'package:medusa_ecommerce/data/models/products/get_products_resp.dart';
import 'package:medusa_ecommerce/data/apiClient/api_client.dart';
import '../models/group30_item_model.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Catalog2Controller extends GetxController with StateMixin<dynamic> {
  Rx<Catalog2Model> catalog2ModelObj = Catalog2Model().obs;

  GetProductsResp getProductsResp = GetProductsResp();

  @override
  void onReady() {
    super.onReady();
    this.callFetchProducts(
      successCall: _onFetchProductsSuccess,
      errCall: _onFetchProductsError,
    );
  }

  @override
  void onClose() {
    super.onClose();
  }

  void callFetchProducts(
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().fetchProducts(
        headers: {
          'Content-Type': 'application/json',
        },
        onSuccess: (resp) {
          onFetchProductsSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onFetchProductsError(err);
          if (errCall != null) {
            errCall();
          }
        });
  }

  void onFetchProductsSuccess(var response) {
    getProductsResp = GetProductsResp.fromJson(response);
  }

  void onFetchProductsError(var err) {
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

  void _onFetchProductsSuccess() {
    List<Group30ItemModel> group30ItemModelList = [];
    if (getProductsResp!.products! != null &&
        getProductsResp!.products!.isNotEmpty) {
      for (var element in getProductsResp!.products!) {
        var group30ItemModel = Group30ItemModel();
        group30ItemModel.languageTxt.value = element.title!.toString();
        group30ItemModel.imageImg.value = element.thumbnail!.toString();
        group30ItemModelList.add(group30ItemModel);
      }
    }
    catalog2ModelObj.value.group30ItemList.value = group30ItemModelList;
  }

  void _onFetchProductsError() {
    Fluttertoast.showToast(
      msg: "Something went wrong!",
    );
  }
}
