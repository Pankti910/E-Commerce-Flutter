import '../catalog_2_screen/widgets/group30_item_widget.dart';
import 'controller/catalog_2_controller.dart';
import 'models/group30_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medusa_ecommerce/core/app_export.dart';

class Catalog2Screen extends GetWidget<Catalog2Controller> {
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
                                    Container(
                                        width: size.width,
                                        decoration: BoxDecoration(
                                            color: ColorConstant.gray50,
                                            boxShadow: [
                                              BoxShadow(
                                                  color:
                                                      ColorConstant.black90014,
                                                  spreadRadius:
                                                      getHorizontalSize(2.00),
                                                  blurRadius:
                                                      getHorizontalSize(2.00),
                                                  offset: Offset(0, 4))
                                            ]),
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                left: getHorizontalSize(15.00),
                                                top: getVerticalSize(11.00),
                                                right: getHorizontalSize(14.51),
                                                bottom: getVerticalSize(11.00)),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          top: getVerticalSize(
                                                              1.00),
                                                          bottom:
                                                              getVerticalSize(
                                                                  5.00)),
                                                      child: Container(
                                                          height:
                                                              getVerticalSize(
                                                                  16.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  9.26),
                                                          child: SvgPicture.asset(
                                                              ImageConstant
                                                                  .imgChevron,
                                                              fit: BoxFit
                                                                  .fill))),
                                                  Text("lbl_women_s_tops".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: AppStyle
                                                          .textstyleaclonicaregular18
                                                          .copyWith(
                                                              fontSize:
                                                                  getFontSize(
                                                                      18),
                                                              height: 1.22)),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          bottom:
                                                              getVerticalSize(
                                                                  4.51)),
                                                      child: Container(
                                                          height:
                                                              getSize(17.49),
                                                          width: getSize(17.49),
                                                          child:
                                                              SvgPicture.asset(
                                                                  ImageConstant
                                                                      .imgVector,
                                                                  fit: BoxFit
                                                                      .fill)))
                                                ]))),
                                    Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                            color: ColorConstant.gray50),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Container(
                                                      height: getVerticalSize(
                                                          90.00),
                                                      width: size.width,
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
                                                                offset: Offset(
                                                                    0, 4))
                                                          ]),
                                                      child: Stack(children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .topRight,
                                                            child: Padding(
                                                                padding: EdgeInsets.only(
                                                                    left: getHorizontalSize(
                                                                        24.00),
                                                                    top: getVerticalSize(
                                                                        26.00),
                                                                    right: getHorizontalSize(
                                                                        24.00),
                                                                    bottom: getVerticalSize(
                                                                        26.00)),
                                                                child: Container(
                                                                    height:
                                                                        getVerticalSize(
                                                                            14.00),
                                                                    width: getHorizontalSize(
                                                                        17.00),
                                                                    child: SvgPicture.asset(
                                                                        ImageConstant
                                                                            .imgShape,
                                                                        fit: BoxFit
                                                                            .fill))))
                                                      ]))),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                          10.00),
                                                      top: getVerticalSize(
                                                          16.00),
                                                      right: getHorizontalSize(
                                                          10.00)),
                                                  child: Obx(() =>
                                                      ListView.builder(
                                                          physics:
                                                              BouncingScrollPhysics(),
                                                          shrinkWrap: true,
                                                          itemCount: controller
                                                              .catalog2ModelObj
                                                              .value
                                                              .group30ItemList
                                                              .length,
                                                          itemBuilder:
                                                              (context, index) {
                                                            Group30ItemModel
                                                                model =
                                                                controller
                                                                    .catalog2ModelObj
                                                                    .value
                                                                    .group30ItemList[index];
                                                            return Group30ItemWidget(
                                                                model);
                                                          })))
                                            ]))
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
                                                  ImageConstant.imgShape1,
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
                                                  ImageConstant.imgShape2,
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
                                      Container(
                                          height: getVerticalSize(23.00),
                                          width: getHorizontalSize(24.00),
                                          child: SvgPicture.asset(
                                              ImageConstant.imgVector1,
                                              fit: BoxFit.fill)),
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
                                                      ImageConstant.imgShape3,
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
                                                  ImageConstant.imgShape4,
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
}
