import 'package:flutter/material.dart';
import '../../style/colors.dart';
import '../../utils/dimens.dart';

BoxDecoration buyPolicyDecoration() {
  return BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(Dimens.height15),
  );
}

BoxDecoration valyutaDecoration() {
  return BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(Dimens.height20),
  );
}

BoxDecoration simpleDecoration() {
  return BoxDecoration(
    color: Colors.grey.shade200,
    borderRadius: BorderRadius.circular(Dimens.height10),
  );
}

BoxDecoration selectValyutaDecoration() {
  return BoxDecoration(
    color: MyColor.mainColor,
    borderRadius: BorderRadius.circular(Dimens.height20),
  );
}

BoxDecoration mainDecoration() {
  return BoxDecoration(
    color: MyColor.mainColor,
    borderRadius: BorderRadius.circular(Dimens.height10 / 2),
  );
}

BoxDecoration mainBlackDecoration() {
  return BoxDecoration(
    color: MyColor.backColor,
    borderRadius: BorderRadius.circular(Dimens.height10 / 2),
    border: Border.all(color: MyColor.newBlack, width: 1),
  );
}

BoxDecoration buyPolicyDecoraion() {
  return BoxDecoration(
    color: MyColor.backColor,
    border: Border.all(color: MyColor.mainColor),
    borderRadius: BorderRadius.circular(Dimens.height10 / 2),
  );
}

BoxDecoration sosItemDecoration() {
  return BoxDecoration(
    color: MyColor.greys50,
    border: Border.all(color: MyColor.greys_pro, width: 0.7),
    borderRadius: BorderRadius.circular(Dimens.height10),
  );
}

editDecoration({
  bool isActive = true,
}) {
  return BoxDecoration(
    color: isActive ? MyColor.activeColor : MyColor.neActiveColor,
    borderRadius: BorderRadius.circular(Dimens.radius10),
    border: Border.all(color: MyColor.lineColor),
  );
}

buttonDecoration() {
  return BoxDecoration(
    color: MyColor.mainColor,
    borderRadius: BorderRadius.circular(Dimens.radius15 / 2),
    //  border: Border.all(color: MyColor.mainColor),
  );
}

BoxDecoration boottomShetDecoration() {
  return BoxDecoration(
    color: MyColor.backColor,
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(Dimens.radius25),
      topRight: Radius.circular(Dimens.radius25),
    ),
  );
}

BoxDecoration boottomShetWidgetDecoration() {
  return BoxDecoration(
    color: Colors.grey,
    borderRadius: BorderRadius.circular(Dimens.height10),
  );
}
