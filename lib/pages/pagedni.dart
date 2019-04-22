import 'package:flutter/material.dart'; 
import 'package:query_rucdni/model/dni.dart';
import 'package:query_rucdni/services/servicedni.dart';
 
 
  class Mostrardatosdni extends StatefulWidget {
   final String value;
  //Mostrardatosdni({Key key, @required this.value}):super(key:key);
  Mostrardatosdni({this.value});
    
 
   @override
   _MostrardatosdniState createState() => _MostrardatosdniState();
 }
  
 
 class _MostrardatosdniState extends State<Mostrardatosdni> { 

   int valida=0;   
 callAPI(){    
    createPost(this.widget.value).then((response){
        if(response.statusCode > 200){
               
      print(response.statusCode);
        //valida=1;
         } else{
        valida=1;
          print(response.statusCode);
     }}).catchError((error){
      //valida=1;
      print('error : $error');
    });
  }
     // final String hola=widget.value;
   @override
   Widget build(BuildContext context) {
           return Scaffold(
            appBar: AppBar(
              title: Text('DNI'),
            ),
            body: Container(
              
               child: FutureBuilder<Dni>(                 
                 future: getPostDNI(this.widget.value),
            builder: (context,snapshot){
              callAPI();          
              
              if(snapshot.connectionState == ConnectionState.done){     
                    if(snapshot.hasError){
                  return Text("Error");
                }
                if(valida==1){
                  return 
                
               Container(                 
                 child: Row(
                   children: <Widget>[                               
                   Expanded(
                child:  Column(    
                                
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(   
                      margin: EdgeInsets.only(
                        left: 30,
                        top: 20,
                      ),                   
                      child:                     
                       Text("DNI",
                    style: TextStyle(color: Colors.blueAccent,fontSize: 15,fontFamily: 'manrope-regular'),
                      ),
                    ),
                     Container(   
                      margin: EdgeInsets.only(
                        left: 30,
                        top: 10,
                      ),                   
                      child:                     
                       Text(snapshot.data.dni.toString(),
                    style: TextStyle(color: Colors.black,fontSize: 18,fontFamily: 'manrope-regular'),
                      ),
                    ),
                     Container(   
                      margin: EdgeInsets.only(
                        left: 30,
                        top: 10,
                      ),                   
                      child:                     
                       Text('NOMBRES',
                    style: TextStyle(color: Colors.blueAccent,fontSize: 15,fontFamily: 'manrope-regular'),
                      ),
                    ),
                     Container(   
                      margin: EdgeInsets.only(
                        left: 30,
                        top: 10,
                      ),                   
                      child:                     
                       Text(snapshot.data.nombres.toString(),
                    style: TextStyle(color: Colors.black,fontSize: 18,fontFamily: 'manrope-regular'),
                      ),
                    ),
                     Container(   
                      margin: EdgeInsets.only(
                        left: 30,
                        top: 10,
                      ),                   
                      child:                     
                       Text('APELLIDO PATERNO',
                    style: TextStyle(color: Colors.blueAccent,fontSize: 15,fontFamily: 'manrope-regular'),
                      ),
                    ),
                     Container(   
                      margin: EdgeInsets.only(
                        left: 30,
                        top: 10,
                      ),                   
                      child:                     
                       Text(snapshot.data.apellidoPaterno.toString(),
                    style: TextStyle(color: Colors.black,fontSize: 18,fontFamily: 'manrope-regular'),
                      ),
                    ),
                     Container(   
                      margin: EdgeInsets.only(
                        left: 30,
                        top: 10,
                      ),                   
                      child:                     
                       Text('APELLIDO MATERNO',
                    style: TextStyle(color: Colors.blueAccent,fontSize: 15,fontFamily: 'manrope-regular'),
                      ),
                    ),
                     Container(   
                      margin: EdgeInsets.only(
                        left: 30,
                        top: 10,
                      ),                   
                      child:                     
                       Text(snapshot.data.apellidoMaterno.toString(),
                    style: TextStyle(color: Colors.black,fontSize: 18,fontFamily: 'manrope-regular'),
                      ),
                    ),
                     ] 
                )
                   )
                   ] 
                   )
                );
                }else{
 return Text("NO SE ENCOTRARON DATOS",style: TextStyle(color: Colors.red,fontSize: 18,fontFamily: 'manrope-regular'));
                }
                //print("ERRRRRRRRRRRRRRRRORRRRRR400");                       
              
               } else
                 
                    return CircularProgressIndicator();  
                  
                                                                               
              },
                 )
                
                 
                 
          ),
          
       );
     
   }

 }