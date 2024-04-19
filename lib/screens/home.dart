import 'package:calculator/utils/constants/colors.dart';
import 'package:calculator/utils/device/device_utility.dart';
import 'package:calculator/utils/helpers/helper_functions.dart';
import 'package:calculator/widgets/row_maker.dart';
import 'package:flutter/material.dart';


class HomeScreenPage extends StatefulWidget {
  const HomeScreenPage({super.key});

  @override
  State<HomeScreenPage> createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {
  @override
  Widget build(BuildContext context) {
    final isDark = myHelperFunctions.isDarkMode(context);
    var userQuestion = 'Question';
    var userAnswer = 'Answer';

    return Scaffold(
      backgroundColor: isDark ? AppColors.darkScreenBackGround : AppColors.lightScreenBackGround,
      body: Column(
        children: [
          // Input & Output
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                top: myDeviceUtilities.getAppBarHeight(), 
                left: 40, 
                right: 20
              ),
              child: Container(
                width: myDeviceUtilities.getScreenWidth(context),
                height: myDeviceUtilities.getScreenHeight(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      userQuestion,
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                    SizedBox(height: 50,),
                    Text(
                      userAnswer,
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Buttons
          Expanded(
            flex: 2,
            child: Container(
              width: myDeviceUtilities.getScreenWidth(context),
              height: myDeviceUtilities.getScreenHeight(),
              child: Column(
                children: [
                  
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      children: [
                        // First Row Of Buttons
                        numpadRowMaker(
                          isDark: isDark,
                          label1: 'C',
                          label2: '%',
                          label3: '/',
                          label4: 'DEL',
                        ),

                        const SizedBox(height: 24),

                        // Second Row Of Buttons
                        numpadRowMaker(
                          isDark: isDark,
                          label1: '9',
                          label2: '8',
                          label3: '7',
                          label4: 'X',
                        ),

                        const SizedBox(height: 24),

                        // Third Row Of Buttons
                        numpadRowMaker(
                          isDark: isDark,
                          label1: '6',
                          label2: '5',
                          label3: '4',
                          label4: '-',
                        ),

                        const SizedBox(height: 24),

                        // Fourth Row Of Buttons
                        numpadRowMaker(
                          isDark: isDark,
                          label1: '3',
                          label2: '2',
                          label3: '1',
                          label4: '+',
                        ),

                        const SizedBox(height: 24),

                        // Fifth Row Of Buttons
                        numpadRowMaker(
                          isDark: isDark,
                          label1: '0',
                          label2: '.',
                          label3: 'ANS',
                          label4: '=',
                        ),
                        
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}