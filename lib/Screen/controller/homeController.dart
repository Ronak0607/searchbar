import 'package:get/get.dart';

class HomeController extends GetxController {
  RxString clickData = "".obs;
  RxList<String> data = [
    "Surat",
    "Ahmedabad",
    "Vadodara",
    "Rajkot",
    "Bhavnagar",
    "Gandhinagar",
    "Junagadh",
    "Vapi",
  ].obs;
  RxList<String> alldata = [
    "Surat",
    "Ahmedabad",
    "Vadodara",
    "Rajkot",
    "Bhavnagar",
    "Gandhinagar",
    "Junagadh",
    "Vapi",
  ].obs;

  void filterListData(String query)
  {
    if(query.isNotEmpty)
      {
        List<String> filterList=[];
        for(var z in alldata)
          {
            if(z.toLowerCase().contains(query.toLowerCase()))
              {
                filterList.add(z);
              }
          }
        data.value=filterList;
      }
    else{
      data.value=[
        "Surat",
        "Ahmedabad",
        "Vadodara",
        "Rajkot",
        "Bhavnagar",
        "Gandhinagar",
        "Junagadh",
        "Vapi",
      ];
    }
  }
}
