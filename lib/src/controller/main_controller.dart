import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class MainController extends GetxController{
  var data = [].obs;

  fetch() async{
    var response = await http.get(Uri.parse('https://whispering-brushlands-91095.herokuapp.com/users'));
    if(response.statusCode==200){
      data.value = jsonDecode(response.body);
      return {"result":"success"};
    }else{
      return {"result":"fail"};
    }
  }
}