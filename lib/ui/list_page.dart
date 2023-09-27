import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:random/bloc/list/list_event.dart';
import 'package:random/bloc/list/list_state.dart';
import 'package:random/style/colors.dart';
import 'package:random/style/text_style.dart';
import 'package:random/ui/widget/my_input.dart';
import 'package:random/utils/dimens.dart';

import '../bloc/list/list_bloc.dart';
import 'widget/button.dart';

class ListPage extends StatelessWidget {
  late ListBloc bloc;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ListBloc>(
      create: (ctx) => ListBloc()..add(GetListEvent()),
      child: BlocBuilder<ListBloc, ListState>(
        builder: (ctx, state) {
          bloc = BlocProvider.of<ListBloc>(ctx);
          return Scaffold(
            appBar: AppBar(
              backgroundColor: MyColor.mainColor,
              leading: IconButton(
                onPressed: () => Get.back(),
                icon: Icon(
                  Icons.arrow_back_ios_new,
                  color: MyColor.iconColor,
                ),
              ),
              title: Text(
                bloc.selectedName,
                style: titleStyle,
              ),
            ),
            body: Container(
              child: Column(
                children: [
                  inputItem(),
                  listItem(),
                  Padding(
                    padding: EdgeInsets.all(Dimens.height15 * 2),
                    child: Button(
                        text: "Tanlash",
                        onClick: () {
                          bloc.add(GenerateEvent());
                        }),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  inputItem() {
    return Container(
      padding: EdgeInsets.all(Dimens.height10),
      child: Row(
        children: [
          Expanded(
            flex: 7,
            child: MyInputField(
              hint: "kiriting",
              controller: bloc.inputController,
            ),
          ),
          Gap(Dimens.width10),
          Expanded(
            flex: 2,
            child: Button(
              text: "add item",
              onClick: () {
                bloc.add(AddEvent());
              },
            ),
          )
        ],
      ),
    );
  }

  listItem() {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(Dimens.height10),
        child: ListView.builder(
          shrinkWrap: false,
          primary: true,
          scrollDirection: Axis.vertical,
          itemCount: bloc.list.length,
          itemBuilder: (context, index) {
            var model = bloc.list[index];
            return item(model, context);
          },
        ),
      ),
    );
  }

  item(String model, BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  model,
                  style: textStyle,
                ),
              ),
              IconButton(
                onPressed: () {
                  bloc.add(RemoveEvent(model));
                },
                icon: Icon(
                  Icons.playlist_remove_sharp,
                  color: MyColor.iconColor,
                ),
              )
            ],
          ),
          Container(
            height: 0.7,
            color: MyColor.greys_pro,
          )
        ],
      ),
    );
  }
}
