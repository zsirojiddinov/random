import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:random/bloc/home/home_bloc.dart';
import 'package:random/bloc/home/home_event.dart';
import 'package:random/bloc/home/home_state.dart';
import 'package:random/repositry/db_repository.dart';
import 'package:random/style/colors.dart';
import 'package:random/style/text_style.dart';
import 'package:random/ui/widget/buttun2.dart';
import 'package:random/utils/dimens.dart';

import '../bloc/number/number_bloc.dart';
import '../bloc/number/number_state.dart';
import 'widget/button.dart';

class NumberPage extends StatelessWidget {
  late NumberBloc bloc;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<NumberBloc>(
      create: (ctx) => NumberBloc(),
      child: BlocBuilder<NumberBloc, NumberState>(
        builder: (ctx, state) {
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
            ),
          );
        },
      ),
    );
  }
}
