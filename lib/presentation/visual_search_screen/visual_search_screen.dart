import '../visual_search_screen/widgets/visualsearch1_item_widget.dart';
import '../visual_search_screen/widgets/visualsearch_item_widget.dart';
import 'package:coin/core/app_export.dart';
import 'package:coin/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class VisualSearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            appBar: CustomAppBar(
                height: getVerticalSize(48),
                leadingWidth: 40,
                leading: CustomImageView(
                    svgPath: ImageConstant.imgArrowleft,
                    height: getSize(24),
                    width: getSize(24),
                    margin: getMargin(left: 16, top: 12, bottom: 12),
                    onTap: () {
                      onTapImgArrowleft(context);
                    }),
                centerTitle: true,
                title: Text("Visual Search",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtGilroySemiBold24)),
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 16, top: 29),
                              child: Text(
                                  "Selet an Object of What You’re Looking For",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtGilroyMedium16))),
                      Container(
                          height: getVerticalSize(250),
                          width: getHorizontalSize(396),
                          margin: getMargin(top: 18),
                          child: Stack(alignment: Alignment.center, children: [
                            CustomImageView(
                                imagePath:
                                    ImageConstant.imgRectangle1330250x3962,
                                height: getVerticalSize(250),
                                width: getHorizontalSize(396),
                                radius:
                                    BorderRadius.circular(getHorizontalSize(6)),
                                alignment: Alignment.center),
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    padding: getPadding(
                                        left: 19,
                                        top: 26,
                                        right: 19,
                                        bottom: 26),
                                    decoration: AppDecoration.fillBlack9007f
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder6),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgRectangle1330162x1721,
                                              height: getVerticalSize(162),
                                              width: getHorizontalSize(172),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(6)),
                                              margin: getMargin(bottom: 36))
                                        ])))
                          ])),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: getPadding(top: 27, right: 16),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 2),
                                        child: Text("Visually Similar Results",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtGilroySemiBold18)),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgClose,
                                        height: getSize(24),
                                        width: getSize(24),
                                        margin: getMargin(left: 81))
                                  ]))),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              height: getVerticalSize(55),
                              child: ListView.separated(
                                  padding: getPadding(left: 16, top: 17),
                                  scrollDirection: Axis.horizontal,
                                  separatorBuilder: (context, index) {
                                    return SizedBox(
                                        height: getVerticalSize(16));
                                  },
                                  itemCount: 3,
                                  itemBuilder: (context, index) {
                                    return VisualsearchItemWidget();
                                  }))),
                      Padding(
                          padding: getPadding(left: 16, top: 16, right: 16),
                          child: GridView.builder(
                              shrinkWrap: true,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      mainAxisExtent: getVerticalSize(131),
                                      crossAxisCount: 3,
                                      mainAxisSpacing: getHorizontalSize(3),
                                      crossAxisSpacing: getHorizontalSize(3)),
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: 12,
                              itemBuilder: (context, index) {
                                return Visualsearch1ItemWidget();
                              }))
                    ]))));
  }

  onTapImgArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
