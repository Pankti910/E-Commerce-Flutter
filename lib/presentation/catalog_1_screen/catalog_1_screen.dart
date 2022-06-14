import '../catalog_1_screen/widgets/group39_item_widget.dart';
import 'controller/catalog_1_controller.dart';
import 'models/group39_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medusa_ecommerce/core/app_export.dart';

class Catalog1Screen extends GetWidget<Catalog1Controller> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            body: Column(children: [
              Expanded(
                  child: Container(
                      width: size.width,
                      child: SingleChildScrollView(
                          child: Container(
                              decoration:
                                  BoxDecoration(color: ColorConstant.gray50),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Container(
                                                  decoration: BoxDecoration(
                                                      color: ColorConstant
                                                          .whiteA700,
                                                      boxShadow: [
                                                        BoxShadow(
                                                            color: ColorConstant
                                                                .black9001e,
                                                            spreadRadius:
                                                                getHorizontalSize(
                                                                    2.00),
                                                            blurRadius:
                                                                getHorizontalSize(
                                                                    2.00),
                                                            offset:
                                                                Offset(0, 4))
                                                      ]),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                       
                                                        Padding(
                                                            padding: EdgeInsets.only(
                                                                top:
                                                                    getVerticalSize(
                                                                        12.00),
                                                                bottom:
                                                                    getVerticalSize(
                                                                        93.00)),
                                                            child: Text(
                                                                "E-commerce"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: AppStyle
                                                                    .textstyleaclonicaregular18
                                                                    .copyWith(
                                                                        fontSize:
                                                                            getFontSize(
                                                                                18),
                                                                        height:
                                                                            1.22))),
                                                        Padding(
                                                            padding: EdgeInsets.only(
                                                                top:
                                                                    getVerticalSize(
                                                                        11.00),
                                                                right:
                                                                    getHorizontalSize(
                                                                        14.51),
                                                                bottom:
                                                                    getVerticalSize(
                                                                        36.00)),
                                                            child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  
                                                                  GestureDetector(
                                                                      onTap:
                                                                          () {
                                                                        onTapImgShape();
                                                                      },
                                                                      child: Padding(
                                                                          padding: EdgeInsets.only(
                                                                              top: getVerticalSize(
                                                                                  50.51),
                                                                              right: getHorizontalSize(
                                                                                  1.49)),
                                                                          child: Container(
                                                                              height: getVerticalSize(12.00),
                                                                              width: getHorizontalSize(16.00),
                                                                              child: SvgPicture.asset(ImageConstant.imgShape5, fit: BoxFit.fill)))),
                                                                ]))
                                                      ]))),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                          20.00),
                                                      top: getVerticalSize(
                                                          11.00),
                                                      right: getHorizontalSize(
                                                          8.00)),
                                                  child: Obx(() =>
                                                      ListView.builder(
                                                          physics:
                                                              BouncingScrollPhysics(),
                                                          shrinkWrap: true,
                                                          itemCount: controller
                                                              .catalog1ModelObj
                                                              .value
                                                              .group39ItemList
                                                              .length,
                                                          itemBuilder:
                                                              (context, index) {
                                                            Group39ItemModel
                                                                model =
                                                                controller
                                                                    .catalog1ModelObj
                                                                    .value
                                                                    .group39ItemList[index];
                                                            return Group39ItemWidget(
                                                                model,
                                                                onTapGroup5:
                                                                    () => {
                                                                          Get.toNamed(
                                                                              AppRoutes.productCardScreen,
                                                                              arguments: {
                                                                                NavigationArgs.id: controller.getProductsResp.products![index].id
                                                                              })
                                                                        });
                                                          }))))
                                        ])
                                  ]))))),
              Container(
                  decoration: BoxDecoration(
                      color: ColorConstant.whiteA700,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(getHorizontalSize(12.00)),
                          topRight: Radius.circular(getHorizontalSize(12.00)),
                          bottomLeft: Radius.circular(getHorizontalSize(0.00)),
                          bottomRight:
                              Radius.circular(getHorizontalSize(0.00)))),
                  child: Padding(
                      padding: EdgeInsets.only(
                          top: getVerticalSize(8.00),
                          bottom: getVerticalSize(32.00)),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                                padding:
                                    EdgeInsets.only(top: getVerticalSize(3.00)),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(
                                              right: getHorizontalSize(2.76)),
                                          child: Container(
                                              height: getVerticalSize(24.00),
                                              width: getHorizontalSize(28.24),
                                              child: SvgPicture.asset(
                                                  ImageConstant.imgShape6,
                                                  fit: BoxFit.fill))),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              top: getVerticalSize(5.00)),
                                          child: Text("lbl_home".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .textstyleaclonicaregular10
                                                  .copyWith(
                                                      fontSize:
                                                          getFontSize(10))))
                                    ])),
                            Padding(
                                padding:
                                    EdgeInsets.only(top: getVerticalSize(3.00)),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: getHorizontalSize(1.00),
                                              right: getHorizontalSize(10.00)),
                                          child: Container(
                                              height: getSize(24.00),
                                              width: getSize(24.00),
                                              child: SvgPicture.asset(
                                                  ImageConstant.imgShape7,
                                                  fit: BoxFit.fill))),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              top: getVerticalSize(5.00)),
                                          child: Text("lbl_shop".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .textstyleaclonicaregular101
                                                  .copyWith(
                                                      fontSize:
                                                          getFontSize(10))))
                                    ])),
                            Padding(
                                padding:
                                    EdgeInsets.only(top: getVerticalSize(4.00)),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      
                                      Align(
                                          alignment: Alignment.centerRight,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: getHorizontalSize(2.00),
                                                  top: getVerticalSize(5.00)),
                                              child: Text("lbl_bag".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .textstyleaclonicaregular10
                                                      .copyWith(
                                                          fontSize: getFontSize(
                                                              10)))))
                                    ])),
                            Padding(
                                padding:
                                    EdgeInsets.only(top: getVerticalSize(3.00)),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: getHorizontalSize(9.00),
                                                  right:
                                                      getHorizontalSize(15.84)),
                                              child: Container(
                                                  height:
                                                      getVerticalSize(24.00),
                                                  width:
                                                      getHorizontalSize(26.16),
                                                  child: SvgPicture.asset(
                                                      ImageConstant.imgShape8,
                                                      fit: BoxFit.fill)))),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  top: getVerticalSize(5.00)),
                                              child: Text("lbl_favorites".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .textstyleaclonicaregular10
                                                      .copyWith(
                                                          fontSize: getFontSize(
                                                              10)))))
                                    ])),
                            Padding(
                                padding:
                                    EdgeInsets.only(top: getVerticalSize(3.00)),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: getHorizontalSize(5.00),
                                              right: getHorizontalSize(10.00)),
                                          child: Container(
                                              height: getVerticalSize(24.00),
                                              width: getHorizontalSize(20.28),
                                              child: SvgPicture.asset(
                                                  ImageConstant.imgShape9,
                                                  fit: BoxFit.fill))),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              top: getVerticalSize(5.00)),
                                          child: Text("lbl_profile".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .textstyleaclonicaregular10
                                                  .copyWith(
                                                      fontSize:
                                                          getFontSize(10))))
                                    ]))
                          ])))
            ])));
  }

  onTapGroup5(index) {
    Get.toNamed(AppRoutes.productCardScreen, arguments: {
      NavigationArgs.id: controller.getProductsResp.products![index].id
    });
  }

  onTapImgShape() {
    Get.toNamed(AppRoutes.catalog2Screen);
  }
}
