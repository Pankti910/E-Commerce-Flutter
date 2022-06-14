import 'dart:developer';

import '/core/app_export.dart';
import 'package:medusa_ecommerce/presentation/catalog_1_screen/models/catalog_1_model.dart';
import 'package:flutter/material.dart';
import 'package:medusa_ecommerce/data/models/products/get_products_resp.dart';
import 'package:medusa_ecommerce/data/apiClient/api_client.dart';
import '../models/group39_item_model.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Catalog1Controller extends GetxController with StateMixin<dynamic> {
  Rx<Catalog1Model> catalog1ModelObj = Catalog1Model().obs;

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
    List<Group39ItemModel> group39ItemModelList = [];
    if (getProductsResp!.products! != null &&
        getProductsResp!.products!.isNotEmpty) {
      for (var element in getProductsResp!.products!) {
        var group39ItemModel = Group39ItemModel();
        group39ItemModel.imageImg.value = element.thumbnail!=null?element.thumbnail!.toString():"";
        group39ItemModel.itemTxt.value = element.title!.toString();
        group39ItemModel.priceTxt.value=element.variants!=null?element.variants![0].prices!.isNotEmpty?element.variants![0].prices![0].amount!:2023:2033; 
        group39ItemModelList.add(group39ItemModel);
      }
    }
              catalog1ModelObj.value.group39ItemList.value = group39ItemModelList;

  }

  void _onFetchProductsError() {
    Fluttertoast.showToast(
      msg: "Something went wrong!",
    );
  }
}
