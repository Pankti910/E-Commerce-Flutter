import 'controller/product_card_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medusa_ecommerce/core/app_export.dart';

class ProductCardScreen extends GetWidget<ProductCardController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            body: Container(
                decoration: BoxDecoration(color: ColorConstant.gray50),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          width: size.width,
                          decoration: BoxDecoration(
                              color: ColorConstant.gray50,
                              boxShadow: [
                                BoxShadow(
                                    color: ColorConstant.black90014,
                                    spreadRadius: getHorizontalSize(2.00),
                                    blurRadius: getHorizontalSize(2.00),
                                    offset: Offset(0, 4))
                              ]),
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: getHorizontalSize(15.00),
                                  top: getVerticalSize(10.00),
                                  right: getHorizontalSize(17.00),
                                  bottom: getVerticalSize(11.00)),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: getVerticalSize(2.00),
                                            bottom: getVerticalSize(5.00)),
                                        child: Container(
                                            height: getVerticalSize(16.00),
                                            width: getHorizontalSize(9.26),
                                            child: SvgPicture.asset(
                                                ImageConstant.imgChevron2,
                                                fit: BoxFit.fill))),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: getVerticalSize(1.00)),
                                        child: Obx(() => Text(
                                            controller.productCardModelObj.value
                                                .headlineTxt.value,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.center,
                                            style: AppStyle
                                                .textstyleaclonicaregular18
                                                .copyWith(
                                                    fontSize: getFontSize(18),
                                                    height: 1.22)))),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            bottom: getVerticalSize(3.08)),
                                        child: Container(
                                            height: getVerticalSize(19.92),
                                            width: getHorizontalSize(18.00),
                                            child: SvgPicture.asset(
                                                ImageConstant.imgVector4,
                                                fit: BoxFit.fill)))
                                  ]))),
                      Expanded(
                          child: SingleChildScrollView(
                              padding: EdgeInsets.only(
                                  bottom: getVerticalSize(20.00)),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                  height:
                                                      getVerticalSize(413.00),
                                                  width:
                                                      getHorizontalSize(275.00),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.bottomLeft,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Obx(() => CommonNetworkImageView(
                                                                url: controller
                                                                    .productCardModelObj
                                                                    .value
                                                                    .imageImg
                                                                    .value,
                                                                height:
                                                                    getVerticalSize(
                                                                        413.00),
                                                                width: getHorizontalSize(
                                                                    275.00)))),
                                                        Container(
                                                            height:
                                                                getVerticalSize(
                                                                    3.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    125.00),
                                                            margin: EdgeInsets.only(
                                                                top: getVerticalSize(
                                                                    10.00),
                                                                right:
                                                                    getHorizontalSize(
                                                                        10.00)),
                                                            decoration: BoxDecoration(
                                                                color:
                                                                    ColorConstant
                                                                        .gray900,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            getHorizontalSize(1.50))))
                                                      ])),
                                             
                                            ])),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: getVerticalSize(12.00)),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                  height:
                                                      getVerticalSize(40.00),
                                                  width:
                                                      getHorizontalSize(138.00),
                                                  child: TextFormField(
                                                      focusNode: FocusNode(),
                                                      controller: controller
                                                          .dropdownUnseleController,
                                                      decoration: InputDecoration(
                                                          hintText:
                                                              "lbl_size".tr,
                                                          hintStyle: AppStyle
                                                              .textstyleactorregular14
                                                              .copyWith(
                                                                  fontSize:
                                                                      getFontSize(
                                                                          14.0),
                                                                  color: ColorConstant
                                                                      .gray900),
                                                          enabledBorder: OutlineInputBorder(
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      getHorizontalSize(8.00)),
                                                              borderSide: BorderSide(color: ColorConstant.deepOrangeA700, width: 0.4)),
                                                          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(getHorizontalSize(8.00)), borderSide: BorderSide(color: ColorConstant.deepOrangeA700, width: 0.4)),
                                                          disabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(getHorizontalSize(8.00)), borderSide: BorderSide(color: ColorConstant.deepOrangeA700, width: 0.4)),
                                                          filled: true,
                                                          fillColor: ColorConstant.whiteA700,
                                                          isDense: true,
                                                          contentPadding: EdgeInsets.only(left: getHorizontalSize(12.00), top: getVerticalSize(10.00), right: getHorizontalSize(30.00), bottom: getVerticalSize(10.00))),
                                                      style: TextStyle(color: ColorConstant.gray900, fontSize: getFontSize(14.0), fontFamily: 'Actor', fontWeight: FontWeight.w400))),
                                              Container(
                                                  height:
                                                      getVerticalSize(40.00),
                                                  width:
                                                      getHorizontalSize(137.00),
                                                  child: TextFormField(
                                                      focusNode: FocusNode(),
                                                      controller: controller
                                                          .dropdownSelectController,
                                                      decoration: InputDecoration(
                                                          hintText:
                                                              "lbl_black".tr,
                                                          hintStyle: AppStyle
                                                              .textstyleactorregular14
                                                              .copyWith(
                                                                  fontSize:
                                                                      getFontSize(
                                                                          14.0),
                                                                  color: ColorConstant
                                                                      .gray900),
                                                          enabledBorder: OutlineInputBorder(
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      getHorizontalSize(8.00)),
                                                              borderSide: BorderSide(color: ColorConstant.gray500, width: 0.4)),
                                                          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(getHorizontalSize(8.00)), borderSide: BorderSide(color: ColorConstant.gray500, width: 0.4)),
                                                          disabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(getHorizontalSize(8.00)), borderSide: BorderSide(color: ColorConstant.gray500, width: 0.4)),
                                                          filled: true,
                                                          fillColor: ColorConstant.whiteA700,
                                                          isDense: true,
                                                          contentPadding: EdgeInsets.only(left: getHorizontalSize(12.00), top: getVerticalSize(10.00), right: getHorizontalSize(30.00), bottom: getVerticalSize(10.00))),
                                                      style: TextStyle(color: ColorConstant.gray900, fontSize: getFontSize(14.0), fontFamily: 'Actor', fontWeight: FontWeight.w400))),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      top:
                                                          getVerticalSize(2.00),
                                                      bottom: getVerticalSize(
                                                          2.00)),
                                                  child: IconButton(
                                                      onPressed: () {},
                                                      constraints: BoxConstraints(
                                                          minWidth:
                                                              getHorizontalSize(
                                                                  36.00),
                                                          minHeight:
                                                              getSize(36.00)),
                                                      padding:
                                                          EdgeInsets.all(0),
                                                      icon: Container(
                                                          width: getSize(36.00),
                                                          height:
                                                              getSize(36.00),
                                                          decoration: BoxDecoration(
                                                              color: ColorConstant
                                                                  .whiteA700,
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      getHorizontalSize(
                                                                          18.00)),
                                                              boxShadow: [
                                                                BoxShadow(
                                                                    color: ColorConstant
                                                                        .black90014,
                                                                    spreadRadius:
                                                                        getHorizontalSize(
                                                                            2.00),
                                                                    blurRadius:
                                                                        getHorizontalSize(
                                                                            2.00),
                                                                    offset:
                                                                        Offset(
                                                                            0,
                                                                            4))
                                                              ]),
                                                          padding: EdgeInsets.only(
                                                              left: getHorizontalSize(
                                                                  11.00),
                                                              top: getVerticalSize(
                                                                  11.00),
                                                              right: getHorizontalSize(11.00),
                                                              bottom: getVerticalSize(11.00)),
                                                          child: Image.asset(ImageConstant.imgAddtofavorite8))))
                                            ])),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: getVerticalSize(22.00)),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                          16.00)),
                                                  child:Obx(()=>Text(controller.productCardModelObj.value
                                                .handleTxt.value.tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .textstyleaclonicaregular24
                                                          .copyWith(
                                                              fontSize:
                                                                  getFontSize(
                                                                      24))))),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      right: getHorizontalSize(
                                                          16.00)),
                                                  child: Text("lbl_19_99".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign:
                                                          TextAlign.right,
                                                      style: AppStyle
                                                          .textstyleaclonicaregular24
                                                          .copyWith(
                                                              fontSize:
                                                                  getFontSize(
                                                                      24))))
                                            ])),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: getHorizontalSize(16.00),
                                            top: getVerticalSize(0.20),
                                            right: getHorizontalSize(16.00)),
                                        child: Text("msg_short_black_dre".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .textstyleaclonicaregular11
                                                .copyWith(
                                                    fontSize:
                                                        getFontSize(11)))),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: getHorizontalSize(17.50),
                                            top: getVerticalSize(8.00),
                                            right: getHorizontalSize(17.50)),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Container(
                                                  height:
                                                      getVerticalSize(12.00),
                                                  width:
                                                      getHorizontalSize(13.00),
                                                  child: SvgPicture.asset(
                                                      ImageConstant.imgStar40,
                                                      fit: BoxFit.fill)),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                          2.00)),
                                                  child: Container(
                                                      height: getVerticalSize(
                                                          12.00),
                                                      width: getHorizontalSize(
                                                          13.00),
                                                      child: SvgPicture.asset(
                                                          ImageConstant
                                                              .imgStar41,
                                                          fit: BoxFit.fill))),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                          2.00)),
                                                  child: Container(
                                                      height: getVerticalSize(
                                                          12.00),
                                                      width: getHorizontalSize(
                                                          13.00),
                                                      child: SvgPicture.asset(
                                                          ImageConstant
                                                              .imgStar42,
                                                          fit: BoxFit.fill))),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                          2.00)),
                                                  child: Container(
                                                      height: getVerticalSize(
                                                          12.00),
                                                      width: getHorizontalSize(
                                                          13.00),
                                                      child: SvgPicture.asset(
                                                          ImageConstant
                                                              .imgStar43,
                                                          fit: BoxFit.fill))),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                          2.00)),
                                                  child: Container(
                                                      height: getVerticalSize(
                                                          12.00),
                                                      width: getHorizontalSize(
                                                          13.00),
                                                      child: SvgPicture.asset(
                                                          ImageConstant
                                                              .imgStar44,
                                                          fit: BoxFit.fill))),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                          2.50),
                                                      top:
                                                          getVerticalSize(3.00),
                                                      bottom: getVerticalSize(
                                                          1.00)),
                                                  child: Text("lbl_10".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .textstyleaclonicaregular10
                                                          .copyWith(
                                                              fontSize:
                                                                  getFontSize(
                                                                      10),
                                                              height: 0.80)))
                                            ])),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                            width: getHorizontalSize(343.00),
                                            margin: EdgeInsets.only(
                                                left: getHorizontalSize(16.00),
                                                top: getVerticalSize(6.00),
                                                right:
                                                    getHorizontalSize(16.00)),
                                            child: Obx(() => Text(
                                                controller.productCardModelObj
                                                    .value.descriptionTxt.value,
                                                maxLines: null,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .textstyleaclonicaregular14
                                                    .copyWith(
                                                        fontSize: getFontSize(
                                                            14)))))),
                                    Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                left: getHorizontalSize(15.00),
                                                top: getVerticalSize(183.00),
                                                right:
                                                    getHorizontalSize(15.00)),
                                            child: Text("lbl_12_items".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.right,
                                                style: AppStyle
                                                    .textstyleaclonicaregular11
                                                    .copyWith(
                                                        fontSize:
                                                            getFontSize(11))))),
                                    Container(
                                        width: double.infinity,
                                        margin: EdgeInsets.only(
                                            top: getVerticalSize(199.00)),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.whiteA700,
                                            boxShadow: [
                                              BoxShadow(
                                                  color:
                                                      ColorConstant.black90019,
                                                  spreadRadius:
                                                      getHorizontalSize(2.00),
                                                  blurRadius:
                                                      getHorizontalSize(2.00),
                                                  offset: Offset(0, -4))
                                            ]),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                          10.00),
                                                      top: getVerticalSize(
                                                          20.00),
                                                      right: getHorizontalSize(
                                                          10.00),
                                                      bottom: getVerticalSize(
                                                          20.00)),
                                                  child: Container(
                                                      alignment:
                                                          Alignment.center,
                                                      height: getVerticalSize(
                                                          48.00),
                                                      width: size.width,
                                                      decoration: AppDecoration
                                                          .textstyleactorregular143,
                                                      child: Text(
                                                          "lbl_add_to_cart".tr,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .textstyleactorregular143
                                                              .copyWith(
                                                                  fontSize:
                                                                      getFontSize(
                                                                          14),
                                                                  height:
                                                                      1.43))))
                                            ]))
                                  ])))
                    ]))));
  }
}
