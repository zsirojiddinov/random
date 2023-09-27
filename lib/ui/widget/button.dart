import 'package:flutter/material.dart';

import '../../style/colors.dart';
import '../../style/text_style.dart';
import '../../utils/dimens.dart';

class Button extends StatelessWidget {
  String text;
  double size;
  Function onClick;

  Button({
    Key? key,
    required this.text,
    required this.onClick,
    this.size = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(MyColor.mainColor),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(Dimens.radius10/2),
            ),
          ),
        ),
      ),
      onPressed: () => onClick(),
      child: SizedBox(
        width: Dimens.screenWidth,
        child: Center(
          child: Text(
            text,
            style: textStyle.copyWith(fontSize: Dimens.font12),
          ),
        ),
      ),
    );
  }
}
