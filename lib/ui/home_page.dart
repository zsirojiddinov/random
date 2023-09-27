import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:random/bloc/home/home_bloc.dart';
import 'package:random/bloc/home/home_event.dart';
import 'package:random/bloc/home/home_state.dart';
import 'package:random/repositry/db_repository.dart';
import 'package:random/style/colors.dart';
import 'package:random/style/text_style.dart';
import 'package:random/ui/widget/buttun2.dart';
import 'package:random/utils/dimens.dart';

import 'widget/button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (ctx) => HomeBloc(),
      child: Scaffold(
        body: SafeArea(
          child: Container(
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    color: MyColor.mainColor,
                    height: Dimens.screenWidth,
                    child: Center(
                      child: Text(
                        "Random",
                        style: titleStyle.copyWith(
                          color: MyColor.newBlack,
                          fontSize: Dimens.font20 * 2,
                        ),
                      ),
                    ),
                  ),
                  BlocBuilder<HomeBloc, HomeState>(builder: (ctx, state) {
                    var bloc = BlocProvider.of<HomeBloc>(ctx);
                    return Container(
                      padding: EdgeInsets.all(Dimens.height45),
                      child: Column(
                        children: [
                          Button(
                              text: "Tasodifiy sonlar",
                              onClick: () {
                                bloc.add(NumberEvent());
                              }),
                          Gap(Dimens.height45 / 2),
                          Button(
                              text: "Tasodifiy ro'yhat",
                              onClick: () {
                                bloc.add(ListEvent());
                              }),
                        ],
                      ),
                    );
                  }),
                ],
              )),
        ),
      ),
    );
  }
}
