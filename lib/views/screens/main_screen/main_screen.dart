import 'package:credpal_fitness/core/services/app_service.dart';
import 'package:credpal_fitness/utils/app_colors.dart';
import 'package:credpal_fitness/utils/helper_class.dart';
import 'package:credpal_fitness/views/screens/main_screen/main_screen_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              MainScreenWidgets().screenHeader(context,'David'),
              MainScreenWidgets().screenTitle(context),
              MainScreenWidgets().workCompleted(context,'58'),
              MainScreenWidgets().weightLayout(context,'72.4', '7.6'),
              SizedBox(
                width: HelperClass().getScreenDimension(context, 'width'),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MainScreenWidgets().fitnessItems(context, 'Burned','cal', '12.6k',const Icon(Icons.all_inbox_outlined,color:AppColor.orange),AppColor.orange),
                    MainScreenWidgets().fitnessItems(context,  'Lifted','kg', '270k',const Icon(Icons.all_inbox_outlined,color:AppColor.purple),AppColor.purple),
                    MainScreenWidgets().fitnessItems(context, 'Training','weeks', '13',const Icon(Icons.all_inbox_outlined,color:AppColor.skyBlue),AppColor.skyBlue),
                  ],
                ),
              ),
              MainScreenWidgets().footerLayout(context,'AUG', '17', '8'),
            ],
          ),
        ),
      ),
    );
  }
}
