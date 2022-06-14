import '../controller/catalog_2_controller.dart';
import '../models/group30_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medusa_ecommerce/core/app_export.dart';

// ignore: must_be_immutable
class Group30ItemWidget extends StatelessWidget {
  Group30ItemWidget(this.group30ItemModelObj, {this.onTapProductcardSa});

  Group30ItemModel group30ItemModelObj;

  var controller = Get.find<Catalog2Controller>();

  VoidCallback? onTapProductcardSa;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: getHorizontalSize(
          5.00,
        ),
        top: getVerticalSize(
          7.00,
        ),
        right: getHorizontalSize(
          6.00,
        ),
        bottom: getVerticalSize(
          7.00,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsets.only(
              bottom: getVerticalSize(
                6.00,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: getVerticalSize(
                      204.00,
                    ),
                    width: getHorizontalSize(
                      162.00,
                    ),
                    margin: EdgeInsets.only(
                      left: getHorizontalSize(
                        1.00,
                      ),
                    ),
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: EdgeInsets.only(
                              bottom: getVerticalSize(
                                10.00,
                              ),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  8.00,
                                ),
                              ),
                              child: Obx(
                                () => CommonNetworkImageView(
                                  url: group30ItemModelObj.imageImg.value,
                                  height: getVerticalSize(
                                    184.00,
                                  ),
                                  width: getHorizontalSize(
                                    162.00,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                0.50,
                              ),
                              top: getVerticalSize(
                                10.00,
                              ),
                              right: getHorizontalSize(
                                10.00,
                              ),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  height: getVerticalSize(
                                    12.00,
                                  ),
                                  width: getHorizontalSize(
                                    13.00,
                                  ),
                                  child: SvgPicture.asset(
                                    ImageConstant.imgStar,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      2.00,
                                    ),
                                  ),
                                  child: Container(
                                    height: getVerticalSize(
                                      12.00,
                                    ),
                                    width: getHorizontalSize(
                                      13.00,
                                    ),
                                    child: SvgPicture.asset(
                                      ImageConstant.imgStar1,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      2.00,
                                    ),
                                  ),
                                  child: Container(
                                    height: getVerticalSize(
                                      12.00,
                                    ),
                                    width: getHorizontalSize(
                                      13.00,
                                    ),
                                    child: SvgPicture.asset(
                                      ImageConstant.imgStar2,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      2.00,
                                    ),
                                  ),
                                  child: Container(
                                    height: getVerticalSize(
                                      12.00,
                                    ),
                                    width: getHorizontalSize(
                                      13.00,
                                    ),
                                    child: SvgPicture.asset(
                                      ImageConstant.imgStar3,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      2.00,
                                    ),
                                  ),
                                  child: Container(
                                    height: getVerticalSize(
                                      12.00,
                                    ),
                                    width: getHorizontalSize(
                                      13.00,
                                    ),
                                    child: SvgPicture.asset(
                                      ImageConstant.imgStar4,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      2.50,
                                    ),
                                    top: getVerticalSize(
                                      3.00,
                                    ),
                                    bottom: getVerticalSize(
                                      1.00,
                                    ),
                                  ),
                                  child: Text(
                                    "lbl_3".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.textstyleaclonicaregular10
                                        .copyWith(
                                      fontSize: getFontSize(
                                        10,
                                      ),
                                      height: 0.80,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: getHorizontalSize(
                      1.09,
                    ),
                    top: getVerticalSize(
                      7.00,
                    ),
                    right: getHorizontalSize(
                      10.00,
                    ),
                  ),
                  child: Text(
                    "lbl_mango".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.textstyleaclonicaregular11.copyWith(
                      fontSize: getFontSize(
                        11,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: getHorizontalSize(
                      1.00,
                    ),
                    top: getVerticalSize(
                      4.00,
                    ),
                    right: getHorizontalSize(
                      10.00,
                    ),
                  ),
                  child: Obx(
                    () => Text(
                      group30ItemModelObj.languageTxt.value,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.textstyleaclonicaregular16.copyWith(
                        fontSize: getFontSize(
                          16,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: getHorizontalSize(
                      2.19,
                    ),
                    top: getVerticalSize(
                      1.00,
                    ),
                    right: getHorizontalSize(
                      10.00,
                    ),
                  ),
                  child: Text(
                    "lbl_9".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.textstyleactorregular14.copyWith(
                      fontSize: getFontSize(
                        14,
                      ),
                      height: 1.43,
                    ),
                  ),
                ),
              ],
            ),
          ),
         ],
      ),
    );
  }
}
