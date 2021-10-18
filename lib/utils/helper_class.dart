import 'package:flutter/cupertino.dart';

class HelperClass{
  double getScreenDimension(BuildContext context,String sizeType){
    return sizeType == 'width' ? MediaQuery.of(context).size.width : MediaQuery.of(context).size.height;
  }
}