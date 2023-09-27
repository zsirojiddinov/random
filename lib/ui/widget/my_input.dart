import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/dimens.dart';
import '../../style/text_style.dart';
import 'deceorations.dart';

class MyInputField extends StatelessWidget {
  String title;
  String hint;
  TextEditingController? controller;
  Widget? widget;
  TextInputType inputType;

  MyInputField({
    Key? key,
    this.title = "",
    this.hint = "",
    this.controller,
    this.widget,
    this.inputType = TextInputType.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title != ""
            ? Container(
                padding: EdgeInsets.only(
                  left: Dimens.width10,
                  bottom: Dimens.height10 / 2,
                ),
                child: Text(title, style: descriptionStyle),
              )
            : Container(),
        Container(
          //  height: 52,
          padding: EdgeInsets.only(left: Dimens.width10),
          //  margin: EdgeInsets.only(top: Dimens.height10 / 2),
          decoration: editDecoration(),
          child: Row(
            children: [
              Expanded(
                child: TextFormField(
                  readOnly: widget == null ? false : true,
                  autofocus: false,
                  cursorColor:
                      Get.isDarkMode ? Colors.grey[100] : Colors.grey[700],
                  controller: controller,
                  style: textStyle.copyWith(fontSize: Dimens.font12),
                  keyboardType: inputType,
                  maxLines: null,
                  decoration: InputDecoration(
                      hintText: hint,
                      hintStyle:
                          textStyle.copyWith(color: Colors.grey.shade700),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: context.theme.backgroundColor,
                          width: 0,
                        ),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: context.theme.backgroundColor,
                          width: 0,
                        ),
                      )),
                ),
              ),
              widget == null
                  ? Container()
                  : Container(
                      child: widget,
                    )
            ],
          ),
        )
      ],
    );
  }
}
