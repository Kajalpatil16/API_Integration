import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:apiintegrationfirsttry/JsonDataofAPI.dart';


class APIService{
   Future <List<DataOfApi>> getApiData() async {
     var response= await http.get(Uri.parse("https://forbes400.herokuapp.com/api/forbes400?limit=10"));
     var display =jsonDecode(response.body.toString());


     List<DataOfApi> DisplayList = display.map<DataOfApi>((json)=>  DataOfApi.fromJson(json)).toList();

     return DisplayList;
   }
}