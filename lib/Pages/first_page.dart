import 'package:counter_app/Pages/second_page..dart';
import 'package:counter_app/constants/colors/app.colors.dart';
import 'package:counter_app/constants/texts/apptexts.dart';
import 'package:counter_app/widgets/custom_button.dart';
import 'package:counter_app/widgets/main_appbar_widget.dart';
import 'package:counter_app/widgets/mainbutton_widget.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _number = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.WhiteColor,
      appBar: const MainAppBarWidget(
        appBarText: AppTexts.homework,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MainButtonWidget(
              number: _number,
              color: AppColors.main,
              onPrsessed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return SecondPage(
                    incnumber: _number,
                  );
                }),
              ),
            ),
            const SizedBox(
              height: 40.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomButton(
                  icon: Icons.remove,
                  onPressed: () => buttonChange(false),
                ),
                CustomButton(
                  icon: Icons.add,
                  onPressed: () => buttonChange(true),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  void buttonChange(bool isAdd) {
    if (isAdd == true) {
      setState(() {
        _number++;
      });
    } else {
      setState(() {
        _number--;
      });
    }
  }
}
