import 'package:flutter/material.dart';

import '../../style/text_style.dart';
import '../../utils/dimens.dart';

import 'deceorations.dart';

class MyButton extends StatelessWidget {
  String text;
  Function onClick;

  MyButton({
    Key? key,
    required this.text,
    required this.onClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onClick(),
      child: Container(
        decoration: buttonDecoration(),
        padding: EdgeInsets.symmetric(
          horizontal: Dimens.width20,
          vertical: Dimens.height10,
        ),
        child: Text(
          text,
          style: textStyle.copyWith(fontSize: Dimens.font12),
        ),
      ),
    );
  }
}
