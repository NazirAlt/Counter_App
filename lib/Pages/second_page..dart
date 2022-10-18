import 'package:counter_app/constants/colors/app.colors.dart';
import 'package:counter_app/constants/texts/apptexts.dart';
import 'package:counter_app/widgets/main_appbar_widget.dart';
import 'package:counter_app/widgets/mainbutton_widget.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key key, this.incnumber}) : super(key: key);
  final int incnumber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.WhiteColor,
      appBar: const MainAppBarWidget(
        appBarText: AppTexts.homework2,
      ),
      body: Center(
          child: MainButtonWidget(
        color: AppColors.blueColor,
        number: incnumber,
        onPrsessed: () => Navigator.pop(context),
      )),
    );
  }
}
