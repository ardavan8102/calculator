import 'package:calculator/utils/constants/colors.dart';
import 'package:calculator/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:calculator/theme/theme.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: myAppTheme.lightTheme,
      themeMode: ThemeMode.system,
      darkTheme: myAppTheme.darkTheme,
      home: const HomeScreenPage(),
    );
  }
}

class HomeScreenPage extends StatefulWidget {
  const HomeScreenPage({super.key});

  @override
  State<HomeScreenPage> createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {

  final List<String> buttons = [
    'C', 'DEL', '/', '%',
    '9', '8', '7', 'X',
    '6', '5', '4', '-',
    '3', '2', '1', '+',
    '0', '.', 'ABS', '=',
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppColors.screenBackGround,
      body: Column(
        children: [
          Expanded(
            child: Container(),
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: GridView.builder(
                itemCount: buttons.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4), 
                itemBuilder: (BuildContext context, int index) {
                  if (index == 0) {
                    return MyButton(
                      buttonText: buttons[index],
                      color: AppColors.clearButtonBackGround,
                      textColor: AppColors.white,
                    );
                  } else if (index == 1) {
                    return MyButton(
                      buttonText: buttons[index],
                      color: AppColors.deleteButtonBackGround,
                      textColor: AppColors.white,
                    );
                  } else {
                    return MyButton(
                      buttonText: buttons[index],
                      color: isOperator(buttons[index]) ? AppColors.operatorButtonBackGround : AppColors.numberButtonBackGround,
                      textColor: AppColors.white,
                    );
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  bool isOperator(String x) {
    if (x == '%' || x == '/' || x == 'X' || x == '-' || x == '+' || x == '=') {
      return true;
    } else {
      return false;
    }
  }
}
