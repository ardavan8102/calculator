import 'package:calculator/utils/constants/colors.dart';
import 'package:calculator/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreenPage(),
    );
  }
}

class HomeScreenPage extends StatefulWidget {
  const HomeScreenPage({super.key});

  @override
  State<HomeScreenPage> createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {

  var userQuestion = '';
  var userAnswer = '';

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
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(userQuestion, style: Theme.of(context).textTheme.headlineLarge!.apply(color: AppColors.white)),
                  Text(userAnswer, style: Theme.of(context).textTheme.headlineLarge!.apply(color: AppColors.white)),
                ],
              ),
            ),
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
                      buttonTapped: () {
                        setState(() {
                          userQuestion = '';
                        });
                      },
                    );
                  } else if (index == 1) {
                    return MyButton(
                      buttonText: buttons[index],
                      color: AppColors.deleteButtonBackGround,
                      textColor: AppColors.white,
                      buttonTapped: () {
                        setState(() {
                          if (userQuestion != '') {
                            userQuestion = userQuestion.substring(0, userQuestion.length - 1);
                          }
                        });
                      },
                    );
                  } else {
                    return MyButton(
                      buttonText: buttons[index],
                      color: isOperator(buttons[index]) ? AppColors.operatorButtonBackGround : AppColors.numberButtonBackGround,
                      textColor: AppColors.white,
                      buttonTapped: () {
                        setState(() {
                          userQuestion += buttons[index];
                        });
                      },
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
