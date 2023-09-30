import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:travel_app/model/data_model.dart';

class DataServices {

  String baseUrl = "https://jsonplaceholder.typicode.com/users";

  Future<List<DataModel>> getInfo() async {
    var apiUrl = 'users';
    http.Response res = await http.get(Uri.parse(baseUrl+apiUrl));
    try{
      if(res.statusCode == 200){
        List<dynamic> list = json.decode(res.body);
        if (kDebugMode) {
          print(list);
        }
        return list.map((e) => DataModel.fromJson(e)).toList();
      }
      else{
        return <DataModel>[];
      }
    }catch(e){
      print(e);
      return <DataModel>[];
    }
  }

}