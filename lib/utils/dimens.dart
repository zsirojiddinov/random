import 'package:get/get.dart';

class Dimens {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;



  // dinamic height padding and margin
  static double height10 = screenHeight / 84.4;
  static double height15 = screenHeight / 56.27;
  static double height20 = screenHeight / 42.2;
  static double height30 = screenHeight / 28.13;
  static double height45 = screenHeight / 18.76;

  // dinamic width padding and margin

  static double width10 = screenHeight / 84.4;
  static double width15 = screenHeight / 56.27;
  static double width20 = screenHeight / 42.2;
  static double width30 = screenHeight / 28.13;
  static double width45 = screenHeight / 18.76;

  // font size
  static double font12 = screenHeight / 70.33;
  static double font14 = screenHeight / 60.28;
  static double font16 = screenHeight / 52.75;
  static double font20 = screenHeight / 42.2;
  static double font26 = screenHeight / 32.46;

  static double radius10 = screenHeight / 84.4;
  static double radius15 = screenHeight / 56.27;
  static double radius20 = screenHeight / 42.2;
  static double radius25 = screenHeight / 33.8;
  static double radius30 = screenHeight / 28.13;

  // icons size

  static double iconSize24 = screenHeight / 35.17;
  static double iconSize20 = screenHeight / 42.2;
  static double iconSize16 = screenHeight / 52.75;

  // list view size
  static double listViewImgSize = screenWidth / 3.25;
  static double listViewTextContSize = screenWidth / 3.9;

  // popular food

  static double popularFoodImageSize = screenHeight / 2.41;

  // bottom height
  static double bottomHeightBar = screenHeight / 7.03;
} //MediaQuery.of(context).size
