import 'package:credpal_fitness/models/dialog_listview_model.dart';
import 'package:credpal_fitness/utils/app_colors.dart';

class AppService{
  Future<List<DialogListViewModel>> fetchListviewData() async{
    List<DialogListViewModel> itemList = [];
    itemList.add(DialogListViewModel('AUG','14','12','Shoulders and Back',AppColor.purple));
    itemList.add(DialogListViewModel('AUG','10','12','Stretching',AppColor.skyBlue));
    itemList.add(DialogListViewModel('AUG','14','12','Chest and Legs',AppColor.orange));
    return itemList;
  }
}