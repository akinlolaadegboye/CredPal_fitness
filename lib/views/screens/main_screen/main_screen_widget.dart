import 'package:credpal_fitness/core/services/app_service.dart';
import 'package:credpal_fitness/models/dialog_listview_model.dart';
import 'package:credpal_fitness/utils/app_colors.dart';
import 'package:credpal_fitness/utils/helper_class.dart';
import 'package:credpal_fitness/views/widgets/general_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreenWidgets{

  screenHeader(BuildContext context,String profileName){
    return Container(
      margin: const EdgeInsets.only(top: 40),
      width: HelperClass().getScreenDimension(context, 'width'),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const CircleAvatar(
                radius: 35,
                child:  Icon(Icons.account_circle_outlined),
              ),
              const SizedBox(width: 20,),
              GeneralWidgets().customTextView('Hello $profileName', AppColor.black, 18, FontWeight.w600),
            ],
          ),
          InkWell(
            onTap: (){
              previousWorkOutDialog(context);
            },
            child: Container(
              height: HelperClass().getScreenDimension(context, 'height') * .07,
              width: HelperClass().getScreenDimension(context, 'width') * .14,
              decoration: BoxDecoration(
                color:AppColor.orange,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Center(
                child: Icon(Icons.assignment_late_rounded,color: AppColor.white,),
              ),
            ),
          ),
        ],
      ),
    );
  }

  screenTitle(BuildContext context){
    return  Container(
      height: HelperClass().getScreenDimension(context, 'height') * .15,
      margin: const EdgeInsets.only(top: 30),
      child: Center(
        child: RichText(
            textAlign: TextAlign.center,
            text: const TextSpan(
              text: 'Stats',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, fontFamily: 'Circular Std',
                  color:AppColor.black
              ),
              children: <TextSpan>[
                TextSpan(text: '  Muscles ', style: TextStyle(fontWeight: FontWeight.w400,
                    // fontFamily: 'Circular Std',
                    color: AppColor.grey,
                    fontSize: 40),)
              ],
        )),
      ),
    );
  }

  workCompleted(BuildContext context,String units){
    return SizedBox(
      height: HelperClass().getScreenDimension(context, 'height') * .15,
      child: Column(
        children: [
          GeneralWidgets().customTextView(units, AppColor.black, 60, FontWeight.bold),
          const SizedBox(height: 10,),
          GeneralWidgets().customTextView('Works Completed', AppColor.grey, 20, FontWeight.w400),
        ],
      ),
    );
  }



  weightLayout(BuildContext context,String currentWeight,String weightLeft){
    return Container(
      height: HelperClass().getScreenDimension(context, 'height') * .15,
      width: HelperClass().getScreenDimension(context, 'width') - 40,
      margin: const EdgeInsets.only(top: 20),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            MainScreenWidgets().currentWeight(currentWeight),
            const Divider(height:50,thickness:2,color: AppColor.grey),
            MainScreenWidgets().weightLeft(weightLeft)
          ],
        ),
      ),
    );
  }

  currentWeight(String weight){
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            GeneralWidgets().customTextView(weight, AppColor.black, 40, FontWeight.bold),
            const SizedBox(height: 20,),
            GeneralWidgets().customTextView('kg', AppColor.black, 16, FontWeight.w500),
          ],
        ),
        GeneralWidgets().customTextView('Current Weight', AppColor.grey, 18, FontWeight.w400),
      ],
    );
  }

  weightLeft(String weight){
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            GeneralWidgets().customTextView(weight, AppColor.black, 25, FontWeight.bold),
            GeneralWidgets().customTextView('kg', AppColor.black, 16, FontWeight.w500),
          ],
        ),
        const SizedBox(height: 5,),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 5,
              width: 60,
              margin: const EdgeInsets.only(left: 5),
              decoration: const BoxDecoration(
                  color: AppColor.orange
              ),
            ),
            Container(height: 5, width: 40,
              decoration: const BoxDecoration(
                  color: AppColor.grey
              ),),
          ],
        ),
        const SizedBox(height: 5,),
        GeneralWidgets().customTextView('Left to Gain', AppColor.grey, 18, FontWeight.w400),
      ],
    );
  }



  fitnessItems(BuildContext context, String title,String unit,String value,Icon icon, Color color){
    return SizedBox(
      width: HelperClass().getScreenDimension(context, 'width') * .3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: color.withOpacity(.08),
            child:  Center(
              child: icon,
            ),
          ),
          const SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              GeneralWidgets().customTextView(value, AppColor.black, 22, FontWeight.bold),
              const SizedBox(height: 15,),
              GeneralWidgets().customTextView(unit, AppColor.black, 15, FontWeight.w500),
            ],
          ),
          const SizedBox(height: 10,),
          GeneralWidgets().customTextView(title, AppColor.grey, 18, FontWeight.w500),
        ],
      ),
    );
  }

  footerLayout(BuildContext context,String dateMonth,String dateDay,String exerciseNo){
    return Container(
        height: HelperClass().getScreenDimension(context, 'height') * .15,
        width: HelperClass().getScreenDimension(context, 'width'),
      margin: const EdgeInsets.only(top: 20),
      child:Row(
        children: [
          Container(
            height: HelperClass().getScreenDimension(context, 'height') * .1,
            width: HelperClass().getScreenDimension(context, 'width') * .16,
            padding: const EdgeInsets.all(12),
            child: Center(
              child: Column(
                 children: [
                   GeneralWidgets().customTextView(dateMonth, AppColor.white, 16, FontWeight.w400),
                   const SizedBox(height:15),
                   GeneralWidgets().customTextView(dateDay, AppColor.white, 22, FontWeight.bold),
                 ],
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: AppColor.orange
            ),
          ),
          Expanded(
            child: Container(
              margin:const EdgeInsets.only(right: 10,left: 10,top: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 5,
                        width: 40,
                        margin: const EdgeInsets.only(left: 5),
                        decoration: const BoxDecoration(
                          color: AppColor.purple
                        ),
                      ),
                      Container(height: 5, width: 40,
                        margin: const EdgeInsets.only(left: 5),
                        decoration: const BoxDecoration(
                            color: AppColor.skyBlue
                        ),),
                      Container(height: 5, width: 40,
                        margin: const EdgeInsets.only(left: 5),
                        decoration: const BoxDecoration(
                            color: AppColor.orange
                        ),)
                    ],
                  ),
                  const SizedBox(height: 10,),
                  GeneralWidgets().customTextView('Recent: Chest & Legs', AppColor.black, 18, FontWeight.w800),
                  const SizedBox(height: 10,),
                  GeneralWidgets().customTextView('$exerciseNo Exercises', AppColor.grey, 17, FontWeight.w500)
                ],
              ),
            ),
          ),
          Container(
            height: HelperClass().getScreenDimension(context, 'height') * .1,
            width: HelperClass().getScreenDimension(context, 'width') * .1,
            child: const Center(
              child: Icon(
                Icons.arrow_forward_ios,
                color: AppColor.black,
              )
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: AppColor.grey.withOpacity(.4)
            ),
          ),
        ],
      )
    );
  }



  previousWorkOutDialog(BuildContext context) {
    showGeneralDialog(
      barrierLabel: "Barrier",
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.5),
      transitionDuration: const Duration(milliseconds: 400),
      context: context,
      pageBuilder: (_, __, ___) {
        return Align(
          alignment: Alignment.center,
          child:  Container(
            height: HelperClass().getScreenDimension(context, 'height') * .415,
            child:  Container(
                padding: const EdgeInsets.all(20),
                child: Material(
                  color: AppColor.white,
                  child: Column(
                    children: [
                      dialogHeader(context),
                      dialogBody(context),
                      dialogFooter()
                    ],
                  ),
                )
            ),
            margin: const EdgeInsets.only(bottom: 50, left: 12, right: 12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(40),
            ),
          ),
        );
      },
      transitionBuilder: (_, anim, __, child) {
        return SlideTransition(
          position: Tween(begin: const  Offset(1, -1), end: const  Offset(0, 0)).animate(anim),
          child: child,
        );
      },
    );
  }

  dialogHeader(BuildContext context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: AppColor.orange.withOpacity(.08),
          child:  const Center(
            child: Icon(Icons.assignment,color:  AppColor.orange,),
          ),
        ),
        const SizedBox(width: 20),
        GeneralWidgets().customTextView('New Workout', AppColor.black, 16, FontWeight.w600),
      ],
    );
  }

  dialogBody(BuildContext context){
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GeneralWidgets().customTextView('From Previous', AppColor.black, 16, FontWeight.w600),
            const SizedBox(height: 10,),
            Container(
              height: HelperClass().getScreenDimension(context, 'height') * .06,
              width: HelperClass().getScreenDimension(context, 'width') * .15,
              child: const Center(
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: AppColor.black,
                  )
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppColor.grey.withOpacity(.4)
              ),
            ),
          ],
        ),
        const SizedBox(height: 10,),
        FutureBuilder<List<DialogListViewModel>>(
          future: AppService().fetchListviewData(),
            builder: (context,snapshot){
              if(!snapshot.hasData){
                return  SizedBox(
                  height: HelperClass().getScreenDimension(context, 'height') * .10,
                  child: const Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              }
                return SizedBox(
                  height: 120,
                  child: ListView.builder(
                      itemCount: snapshot.data!.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index){
                        return dialogListViewItems(context, snapshot.data![index].dateMonth, snapshot.data![index].dateDay, snapshot.data![index].exerciseNo, snapshot.data![index].exerciseType,snapshot.data![index].color);
                      }),
                );

            })
      ],
    );
  }

  dialogListViewItems(BuildContext context,String dateMonth,String dateDay,String exerciseNo,exerciseType,color){
    return Card(
      elevation: 2,
      margin: const EdgeInsets.all(10),
      child: Container(
          height: HelperClass().getScreenDimension(context, 'height') * .15,
          width: HelperClass().getScreenDimension(context, 'width') - 40,
          padding: const EdgeInsets.only(left: 10,),
        child:Row(
            children: [
              Container(
                height: HelperClass().getScreenDimension(context, 'height') * .1,
                width: HelperClass().getScreenDimension(context, 'width') * .16,
                padding: const EdgeInsets.all(12),
                child: Center(
                  child: Column(
                    children: [
                      GeneralWidgets().customTextView(dateMonth, AppColor.white, 16, FontWeight.w400),
                      const SizedBox(height:15),
                      GeneralWidgets().customTextView(dateDay, AppColor.white, 22, FontWeight.bold),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: color
                ),
              ),
              Expanded(
                child: Container(
                  margin:const EdgeInsets.only(right: 10,left: 10,top: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 5,
                            width: 30,
                            margin: const EdgeInsets.only(left: 5),
                            decoration: const BoxDecoration(
                                color: AppColor.purple
                            ),
                          ),
                          Container(height: 5, width: 30,
                            margin: const EdgeInsets.only(left: 5),
                            decoration: const BoxDecoration(
                                color: AppColor.skyBlue
                            ),),
                        ],
                      ),
                      const SizedBox(height: 10,),
                      GeneralWidgets().customTextView('Recent: Chest & Legs', AppColor.black, 18, FontWeight.w800),
                      const SizedBox(height: 10,),
                      GeneralWidgets().customTextView('$exerciseNo Exercises', AppColor.grey, 17, FontWeight.w500)
                    ],
                  ),
                ),
              ),
            ],
          ),
        decoration: const BoxDecoration(
            // borderRadius: BorderRadius.circular(20),
          color: AppColor.white,
            boxShadow: [BoxShadow(
                blurRadius: 20,
                color: AppColor.greyLight
            )]
        ),
      ),
    );
  }

  dialogFooter(){
    return Container(
      margin: const EdgeInsets.only(top: 40),
      child: Row(
        children: [
          const Icon(Icons.arrow_forward,color: Colors.grey,),
          const SizedBox(width: 5),
          GeneralWidgets().customTextView('CLOSE', AppColor.black, 20, FontWeight.w600),
        ],
      ),
    );
  }
}