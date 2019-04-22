    
import 'package:flutter/material.dart';
import 'package:query_rucdni/model/dni.dart';
//import 'package:query_rucdni/model/ruc.dart';
import 'package:query_rucdni/services/servicedni.dart';
import 'package:query_rucdni/pages/pagedni.dart';
import 'package:query_rucdni/pages/pagesruc.dart';
//import 'package:http/http.dart' as http;
//import 'dart:async';
//import 'dart:convert';
 
 
void main() {
  runApp(MaterialApp(
    title: 'Flutter Tutorial',
    theme: ThemeData(fontFamily: 'manrope-regular'),     
    routes: <String, WidgetBuilder> {
    //'/pages/pagedni': (BuildContext context) => new Mostrardatosdni(""),
     
  },
    home: Tutorialhome(),
  ));
}

class Tutorialhome extends StatefulWidget { 
  
  
  @override
  _TutorialhomeState createState() => _TutorialhomeState();
  }

class _TutorialhomeState extends State<Tutorialhome> {
   
  final TextEditingController textodevuelto=TextEditingController();
 String alertas="";
 void _alertas(String valr){
   setState(() {
     alertas=valr;
   });
 }

   int _botonesradio=1;
    void _opcioncogida(int valor){
      setState(() {
        _botonesradio=valor;

        switch (_botonesradio){
          
        case 1:
        
        print(_botonesradio);
        break;
        case 2:
print(_botonesradio);
        break;
        }
        

      });
   }
 
  

   @override
  Widget build(BuildContext context) {
   return Scaffold(
    
      appBar: AppBar(
        title: Text("BUSCAR DNI / RUC"),
      ),
      body: Center(                 
          child:Column(  
             mainAxisAlignment: MainAxisAlignment.center,
 crossAxisAlignment: CrossAxisAlignment.center,           
          children: <Widget>[
            Row(
               mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>
              [
            Text(
              'DNI'
            ),
            Radio(
              value: 1,
              groupValue: _botonesradio,
              activeColor: Colors.blue,
              onChanged: _opcioncogida,
            ),
            Text(
              'RUC'
            ),
            Radio(
              value: 2,
              groupValue: _botonesradio,
              activeColor: Colors.blue,
              onChanged: _opcioncogida,
            ),
              ]
            ),
            TextField(
              textAlign: TextAlign.center,
             controller: textodevuelto,
             keyboardType: TextInputType.number,
             decoration: InputDecoration(
               border: InputBorder.none,               
               hintText: 'INGRESA DNI O RUC',               
             )
            ),
            RaisedButton(
              onPressed: (){ 
                if(textodevuelto.text== ""){      
                  _alertas("INGRESE UN NÚMERO");                         
               
                  }else{
                  if (_botonesradio==1){
                    if (textodevuelto.text.length==8){
                
                      _alertas("");
                       String datodni=textodevuelto.text;
                          //  print(data);
                     // String dataniruc=textodevuelto.toString(); 
                      Navigator.push(context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => new Mostrardatosdni(value: datodni,)));
                    }else{
                     
                      _alertas("EL NÚMERO DE DNI DEBE CONTENER 8 CARACTERES");
                    }
                  
                      
                  }else{
                    if(textodevuelto.text.length==11){
                       _alertas("");
                       String datoruc=textodevuelto.text;
                       print(datoruc);
                          Navigator.push(context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => Mostrardatosruc(value2: datoruc,)));
                    }else{
                        _alertas("EL NÚMERO DE RUC DEBE CONTENER 11 CARACTERES");
                    }                                                    
                  }                 
                    }                                 
              },
              child: Text("BUSCAR"),               
              color: Colors.blue,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
            ),
            Text(
              '$alertas',
              style: TextStyle(color: Colors.red),
            )
             
          ],
        ),
        ),
          
      );
  }
  
 
  

}