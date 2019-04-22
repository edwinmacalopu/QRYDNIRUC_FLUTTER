    
import 'package:http/http.dart' as http;
import 'dart:async';
import 'package:query_rucdni/model/dni.dart';
 
 


Future<Dni> getPostDNI(String valordni)async{
  
  var url = "http://tuapi/public/api/dni/"+valordni.toString()+"?token=dd";
    final response =await http.get(url);

    if (response.statusCode == 200) {
       return dniFromJson(response.body);
    }

    return null;
    //final responseJsondni = json.decode(response.body); 
    
     
}
 Future<http.Response> createPost(String valor) async{
  final response = await http.get("http://tuapi/public/api/dni/"+valor.toString()+"?token=dd");
  return response;
   
}