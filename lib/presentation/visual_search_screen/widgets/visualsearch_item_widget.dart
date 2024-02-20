import 'package:coin/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class VisualsearchItemWidget extends StatelessWidget {
  VisualsearchItemWidget();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          width: getHorizontalSize(
            152,
          ),
          margin: getMargin(
            right: 16,
          ),
          padding: getPadding(
            left: 16,
            top: 9,
            right: 16,
            bottom: 9,
          ),
          decoration: AppDecoration.txtOutlineBluegray400.copyWith(
            borderRadius: BorderRadiusStyle.txtCircleBorder19,
          ),
          child: Text(
            "",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtGilroyMedium14,
          ),
        ),
      ),
    );
  }
}
