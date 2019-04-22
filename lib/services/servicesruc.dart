    
import 'package:http/http.dart' as http;
import 'dart:async';
import 'package:query_rucdni/model/ruc.dart';
 


Future<Ruc> getPostRUC(String numruc)async{
  var url = "http://tuapi/public/api/ruc/"+numruc.toString()+"?token=qq";
    final response =await http.get(url);
    //final responseJsondni = json.decode(response.body); 
    return rucFromJson(response.body);
}
Future<http.Response> createPostruc(String valor) async{
  final response = await http.get("http://tuapi/public/api/ruc/"+valor.toString()+"?token=qq");
  return response;
   
}